unit BenchTypes.Registry;

interface

type
  TBenchmarkRegistry = class
  public
    class procedure CreateAllLists;
    class procedure CreateAllDictionaries;
    class procedure RunAll;
  end;

implementation

uses
  System.SysUtils,
  System.Generics.Collections,
  Dext.Collections,
  BenchTypes.Unit001,
  BenchTypes.Unit002,
  BenchTypes.Unit003,
  BenchTypes.Unit004,
  BenchTypes.Unit005,
  BenchTypes.Unit006,
  BenchTypes.Unit007,
  BenchTypes.Unit008,
  BenchTypes.Unit009,
  BenchTypes.Unit010,
  BenchTypes.Unit011,
  BenchTypes.Unit012,
  BenchTypes.Unit013,
  BenchTypes.Unit014,
  BenchTypes.Unit015,
  BenchTypes.Unit016,
  BenchTypes.Unit017,
  BenchTypes.Unit018,
  BenchTypes.Unit019,
  BenchTypes.Unit020,
  BenchTypes.Unit021,
  BenchTypes.Unit022,
  BenchTypes.Unit023,
  BenchTypes.Unit024,
  BenchTypes.Unit025,
  BenchTypes.Unit026,
  BenchTypes.Unit027,
  BenchTypes.Unit028,
  BenchTypes.Unit029,
  BenchTypes.Unit030,
  BenchTypes.Unit031,
  BenchTypes.Unit032,
  BenchTypes.Unit033,
  BenchTypes.Unit034,
  BenchTypes.Unit035,
  BenchTypes.Unit036,
  BenchTypes.Unit037,
  BenchTypes.Unit038,
  BenchTypes.Unit039,
  BenchTypes.Unit040,
  BenchTypes.Unit041,
  BenchTypes.Unit042,
  BenchTypes.Unit043,
  BenchTypes.Unit044,
  BenchTypes.Unit045,
  BenchTypes.Unit046,
  BenchTypes.Unit047,
  BenchTypes.Unit048,
  BenchTypes.Unit049,
  BenchTypes.Unit050;

class procedure TBenchmarkRegistry.CreateAllLists;
var
  L_TBenchRecord001: IList<TBenchRecord001>;
  L_TBenchRecord002: IList<TBenchRecord002>;
  L_TBenchRecord003: IList<TBenchRecord003>;
  L_TBenchRecord004: IList<TBenchRecord004>;
  L_TBenchRecord005: IList<TBenchRecord005>;
  L_TBenchRecord006: IList<TBenchRecord006>;
  L_TBenchRecord007: IList<TBenchRecord007>;
  L_TBenchRecord008: IList<TBenchRecord008>;
  L_TBenchRecord009: IList<TBenchRecord009>;
  L_TBenchRecord010: IList<TBenchRecord010>;
  L_TBenchRecord011: IList<TBenchRecord011>;
  L_TBenchRecord012: IList<TBenchRecord012>;
  L_TBenchRecord013: IList<TBenchRecord013>;
  L_TBenchRecord014: IList<TBenchRecord014>;
  L_TBenchRecord015: IList<TBenchRecord015>;
  L_TBenchRecord016: IList<TBenchRecord016>;
  L_TBenchRecord017: IList<TBenchRecord017>;
  L_TBenchRecord018: IList<TBenchRecord018>;
  L_TBenchRecord019: IList<TBenchRecord019>;
  L_TBenchRecord020: IList<TBenchRecord020>;
  L_TBenchRecord021: IList<TBenchRecord021>;
  L_TBenchRecord022: IList<TBenchRecord022>;
  L_TBenchRecord023: IList<TBenchRecord023>;
  L_TBenchRecord024: IList<TBenchRecord024>;
  L_TBenchRecord025: IList<TBenchRecord025>;
  L_TBenchRecord026: IList<TBenchRecord026>;
  L_TBenchRecord027: IList<TBenchRecord027>;
  L_TBenchRecord028: IList<TBenchRecord028>;
  L_TBenchRecord029: IList<TBenchRecord029>;
  L_TBenchRecord030: IList<TBenchRecord030>;
  L_TBenchRecord031: IList<TBenchRecord031>;
  L_TBenchRecord032: IList<TBenchRecord032>;
  L_TBenchRecord033: IList<TBenchRecord033>;
  L_TBenchRecord034: IList<TBenchRecord034>;
  L_TBenchRecord035: IList<TBenchRecord035>;
  L_TBenchRecord036: IList<TBenchRecord036>;
  L_TBenchRecord037: IList<TBenchRecord037>;
  L_TBenchRecord038: IList<TBenchRecord038>;
  L_TBenchRecord039: IList<TBenchRecord039>;
  L_TBenchRecord040: IList<TBenchRecord040>;
  L_TBenchRecord041: IList<TBenchRecord041>;
  L_TBenchRecord042: IList<TBenchRecord042>;
  L_TBenchRecord043: IList<TBenchRecord043>;
  L_TBenchRecord044: IList<TBenchRecord044>;
  L_TBenchRecord045: IList<TBenchRecord045>;
  L_TBenchRecord046: IList<TBenchRecord046>;
  L_TBenchRecord047: IList<TBenchRecord047>;
  L_TBenchRecord048: IList<TBenchRecord048>;
  L_TBenchRecord049: IList<TBenchRecord049>;
  L_TBenchRecord050: IList<TBenchRecord050>;
  L_TBenchRecord051: IList<TBenchRecord051>;
  L_TBenchRecord052: IList<TBenchRecord052>;
  L_TBenchRecord053: IList<TBenchRecord053>;
  L_TBenchRecord054: IList<TBenchRecord054>;
  L_TBenchRecord055: IList<TBenchRecord055>;
  L_TBenchRecord056: IList<TBenchRecord056>;
  L_TBenchRecord057: IList<TBenchRecord057>;
  L_TBenchRecord058: IList<TBenchRecord058>;
  L_TBenchRecord059: IList<TBenchRecord059>;
  L_TBenchRecord060: IList<TBenchRecord060>;
  L_TBenchRecord061: IList<TBenchRecord061>;
  L_TBenchRecord062: IList<TBenchRecord062>;
  L_TBenchRecord063: IList<TBenchRecord063>;
  L_TBenchRecord064: IList<TBenchRecord064>;
  L_TBenchRecord065: IList<TBenchRecord065>;
  L_TBenchRecord066: IList<TBenchRecord066>;
  L_TBenchRecord067: IList<TBenchRecord067>;
  L_TBenchRecord068: IList<TBenchRecord068>;
  L_TBenchRecord069: IList<TBenchRecord069>;
  L_TBenchRecord070: IList<TBenchRecord070>;
  L_TBenchRecord071: IList<TBenchRecord071>;
  L_TBenchRecord072: IList<TBenchRecord072>;
  L_TBenchRecord073: IList<TBenchRecord073>;
  L_TBenchRecord074: IList<TBenchRecord074>;
  L_TBenchRecord075: IList<TBenchRecord075>;
  L_TBenchRecord076: IList<TBenchRecord076>;
  L_TBenchRecord077: IList<TBenchRecord077>;
  L_TBenchRecord078: IList<TBenchRecord078>;
  L_TBenchRecord079: IList<TBenchRecord079>;
  L_TBenchRecord080: IList<TBenchRecord080>;
  L_TBenchRecord081: IList<TBenchRecord081>;
  L_TBenchRecord082: IList<TBenchRecord082>;
  L_TBenchRecord083: IList<TBenchRecord083>;
  L_TBenchRecord084: IList<TBenchRecord084>;
  L_TBenchRecord085: IList<TBenchRecord085>;
  L_TBenchRecord086: IList<TBenchRecord086>;
  L_TBenchRecord087: IList<TBenchRecord087>;
  L_TBenchRecord088: IList<TBenchRecord088>;
  L_TBenchRecord089: IList<TBenchRecord089>;
  L_TBenchRecord090: IList<TBenchRecord090>;
  L_TBenchRecord091: IList<TBenchRecord091>;
  L_TBenchRecord092: IList<TBenchRecord092>;
  L_TBenchRecord093: IList<TBenchRecord093>;
  L_TBenchRecord094: IList<TBenchRecord094>;
  L_TBenchRecord095: IList<TBenchRecord095>;
  L_TBenchRecord096: IList<TBenchRecord096>;
  L_TBenchRecord097: IList<TBenchRecord097>;
  L_TBenchRecord098: IList<TBenchRecord098>;
  L_TBenchRecord099: IList<TBenchRecord099>;
  L_TBenchRecord100: IList<TBenchRecord100>;
  L_TBenchRecord101: IList<TBenchRecord101>;
  L_TBenchRecord102: IList<TBenchRecord102>;
  L_TBenchRecord103: IList<TBenchRecord103>;
  L_TBenchRecord104: IList<TBenchRecord104>;
  L_TBenchRecord105: IList<TBenchRecord105>;
  L_TBenchRecord106: IList<TBenchRecord106>;
  L_TBenchRecord107: IList<TBenchRecord107>;
  L_TBenchRecord108: IList<TBenchRecord108>;
  L_TBenchRecord109: IList<TBenchRecord109>;
  L_TBenchRecord110: IList<TBenchRecord110>;
  L_TBenchRecord111: IList<TBenchRecord111>;
  L_TBenchRecord112: IList<TBenchRecord112>;
  L_TBenchRecord113: IList<TBenchRecord113>;
  L_TBenchRecord114: IList<TBenchRecord114>;
  L_TBenchRecord115: IList<TBenchRecord115>;
  L_TBenchRecord116: IList<TBenchRecord116>;
  L_TBenchRecord117: IList<TBenchRecord117>;
  L_TBenchRecord118: IList<TBenchRecord118>;
  L_TBenchRecord119: IList<TBenchRecord119>;
  L_TBenchRecord120: IList<TBenchRecord120>;
  L_TBenchRecord121: IList<TBenchRecord121>;
  L_TBenchRecord122: IList<TBenchRecord122>;
  L_TBenchRecord123: IList<TBenchRecord123>;
  L_TBenchRecord124: IList<TBenchRecord124>;
  L_TBenchRecord125: IList<TBenchRecord125>;
  L_TBenchRecord126: IList<TBenchRecord126>;
  L_TBenchRecord127: IList<TBenchRecord127>;
  L_TBenchRecord128: IList<TBenchRecord128>;
  L_TBenchRecord129: IList<TBenchRecord129>;
  L_TBenchRecord130: IList<TBenchRecord130>;
  L_TBenchRecord131: IList<TBenchRecord131>;
  L_TBenchRecord132: IList<TBenchRecord132>;
  L_TBenchRecord133: IList<TBenchRecord133>;
  L_TBenchRecord134: IList<TBenchRecord134>;
  L_TBenchRecord135: IList<TBenchRecord135>;
  L_TBenchRecord136: IList<TBenchRecord136>;
  L_TBenchRecord137: IList<TBenchRecord137>;
  L_TBenchRecord138: IList<TBenchRecord138>;
  L_TBenchRecord139: IList<TBenchRecord139>;
  L_TBenchRecord140: IList<TBenchRecord140>;
  L_TBenchRecord141: IList<TBenchRecord141>;
  L_TBenchRecord142: IList<TBenchRecord142>;
  L_TBenchRecord143: IList<TBenchRecord143>;
  L_TBenchRecord144: IList<TBenchRecord144>;
  L_TBenchRecord145: IList<TBenchRecord145>;
  L_TBenchRecord146: IList<TBenchRecord146>;
  L_TBenchRecord147: IList<TBenchRecord147>;
  L_TBenchRecord148: IList<TBenchRecord148>;
  L_TBenchRecord149: IList<TBenchRecord149>;
  L_TBenchRecord150: IList<TBenchRecord150>;
  L_TBenchRecord151: IList<TBenchRecord151>;
  L_TBenchRecord152: IList<TBenchRecord152>;
  L_TBenchRecord153: IList<TBenchRecord153>;
  L_TBenchRecord154: IList<TBenchRecord154>;
  L_TBenchRecord155: IList<TBenchRecord155>;
  L_TBenchRecord156: IList<TBenchRecord156>;
  L_TBenchRecord157: IList<TBenchRecord157>;
  L_TBenchRecord158: IList<TBenchRecord158>;
  L_TBenchRecord159: IList<TBenchRecord159>;
  L_TBenchRecord160: IList<TBenchRecord160>;
  L_TBenchRecord161: IList<TBenchRecord161>;
  L_TBenchRecord162: IList<TBenchRecord162>;
  L_TBenchRecord163: IList<TBenchRecord163>;
  L_TBenchRecord164: IList<TBenchRecord164>;
  L_TBenchRecord165: IList<TBenchRecord165>;
  L_TBenchRecord166: IList<TBenchRecord166>;
  L_TBenchRecord167: IList<TBenchRecord167>;
  L_TBenchRecord168: IList<TBenchRecord168>;
  L_TBenchRecord169: IList<TBenchRecord169>;
  L_TBenchRecord170: IList<TBenchRecord170>;
  L_TBenchRecord171: IList<TBenchRecord171>;
  L_TBenchRecord172: IList<TBenchRecord172>;
  L_TBenchRecord173: IList<TBenchRecord173>;
  L_TBenchRecord174: IList<TBenchRecord174>;
  L_TBenchRecord175: IList<TBenchRecord175>;
  L_TBenchRecord176: IList<TBenchRecord176>;
  L_TBenchRecord177: IList<TBenchRecord177>;
  L_TBenchRecord178: IList<TBenchRecord178>;
  L_TBenchRecord179: IList<TBenchRecord179>;
  L_TBenchRecord180: IList<TBenchRecord180>;
  L_TBenchRecord181: IList<TBenchRecord181>;
  L_TBenchRecord182: IList<TBenchRecord182>;
  L_TBenchRecord183: IList<TBenchRecord183>;
  L_TBenchRecord184: IList<TBenchRecord184>;
  L_TBenchRecord185: IList<TBenchRecord185>;
  L_TBenchRecord186: IList<TBenchRecord186>;
  L_TBenchRecord187: IList<TBenchRecord187>;
  L_TBenchRecord188: IList<TBenchRecord188>;
  L_TBenchRecord189: IList<TBenchRecord189>;
  L_TBenchRecord190: IList<TBenchRecord190>;
  L_TBenchRecord191: IList<TBenchRecord191>;
  L_TBenchRecord192: IList<TBenchRecord192>;
  L_TBenchRecord193: IList<TBenchRecord193>;
  L_TBenchRecord194: IList<TBenchRecord194>;
  L_TBenchRecord195: IList<TBenchRecord195>;
  L_TBenchRecord196: IList<TBenchRecord196>;
  L_TBenchRecord197: IList<TBenchRecord197>;
  L_TBenchRecord198: IList<TBenchRecord198>;
  L_TBenchRecord199: IList<TBenchRecord199>;
  L_TBenchRecord200: IList<TBenchRecord200>;
  L_TBenchRecord201: IList<TBenchRecord201>;
  L_TBenchRecord202: IList<TBenchRecord202>;
  L_TBenchRecord203: IList<TBenchRecord203>;
  L_TBenchRecord204: IList<TBenchRecord204>;
  L_TBenchRecord205: IList<TBenchRecord205>;
  L_TBenchRecord206: IList<TBenchRecord206>;
  L_TBenchRecord207: IList<TBenchRecord207>;
  L_TBenchRecord208: IList<TBenchRecord208>;
  L_TBenchRecord209: IList<TBenchRecord209>;
  L_TBenchRecord210: IList<TBenchRecord210>;
  L_TBenchRecord211: IList<TBenchRecord211>;
  L_TBenchRecord212: IList<TBenchRecord212>;
  L_TBenchRecord213: IList<TBenchRecord213>;
  L_TBenchRecord214: IList<TBenchRecord214>;
  L_TBenchRecord215: IList<TBenchRecord215>;
  L_TBenchRecord216: IList<TBenchRecord216>;
  L_TBenchRecord217: IList<TBenchRecord217>;
  L_TBenchRecord218: IList<TBenchRecord218>;
  L_TBenchRecord219: IList<TBenchRecord219>;
  L_TBenchRecord220: IList<TBenchRecord220>;
  L_TBenchRecord221: IList<TBenchRecord221>;
  L_TBenchRecord222: IList<TBenchRecord222>;
  L_TBenchRecord223: IList<TBenchRecord223>;
  L_TBenchRecord224: IList<TBenchRecord224>;
  L_TBenchRecord225: IList<TBenchRecord225>;
  L_TBenchRecord226: IList<TBenchRecord226>;
  L_TBenchRecord227: IList<TBenchRecord227>;
  L_TBenchRecord228: IList<TBenchRecord228>;
  L_TBenchRecord229: IList<TBenchRecord229>;
  L_TBenchRecord230: IList<TBenchRecord230>;
  L_TBenchRecord231: IList<TBenchRecord231>;
  L_TBenchRecord232: IList<TBenchRecord232>;
  L_TBenchRecord233: IList<TBenchRecord233>;
  L_TBenchRecord234: IList<TBenchRecord234>;
  L_TBenchRecord235: IList<TBenchRecord235>;
  L_TBenchRecord236: IList<TBenchRecord236>;
  L_TBenchRecord237: IList<TBenchRecord237>;
  L_TBenchRecord238: IList<TBenchRecord238>;
  L_TBenchRecord239: IList<TBenchRecord239>;
  L_TBenchRecord240: IList<TBenchRecord240>;
  L_TBenchRecord241: IList<TBenchRecord241>;
  L_TBenchRecord242: IList<TBenchRecord242>;
  L_TBenchRecord243: IList<TBenchRecord243>;
  L_TBenchRecord244: IList<TBenchRecord244>;
  L_TBenchRecord245: IList<TBenchRecord245>;
  L_TBenchRecord246: IList<TBenchRecord246>;
  L_TBenchRecord247: IList<TBenchRecord247>;
  L_TBenchRecord248: IList<TBenchRecord248>;
  L_TBenchRecord249: IList<TBenchRecord249>;
  L_TBenchRecord250: IList<TBenchRecord250>;
  L_TBenchRecord251: IList<TBenchRecord251>;
  L_TBenchRecord252: IList<TBenchRecord252>;
  L_TBenchRecord253: IList<TBenchRecord253>;
  L_TBenchRecord254: IList<TBenchRecord254>;
  L_TBenchRecord255: IList<TBenchRecord255>;
  L_TBenchRecord256: IList<TBenchRecord256>;
  L_TBenchRecord257: IList<TBenchRecord257>;
  L_TBenchRecord258: IList<TBenchRecord258>;
  L_TBenchRecord259: IList<TBenchRecord259>;
  L_TBenchRecord260: IList<TBenchRecord260>;
  L_TBenchRecord261: IList<TBenchRecord261>;
  L_TBenchRecord262: IList<TBenchRecord262>;
  L_TBenchRecord263: IList<TBenchRecord263>;
  L_TBenchRecord264: IList<TBenchRecord264>;
  L_TBenchRecord265: IList<TBenchRecord265>;
  L_TBenchRecord266: IList<TBenchRecord266>;
  L_TBenchRecord267: IList<TBenchRecord267>;
  L_TBenchRecord268: IList<TBenchRecord268>;
  L_TBenchRecord269: IList<TBenchRecord269>;
  L_TBenchRecord270: IList<TBenchRecord270>;
  L_TBenchRecord271: IList<TBenchRecord271>;
  L_TBenchRecord272: IList<TBenchRecord272>;
  L_TBenchRecord273: IList<TBenchRecord273>;
  L_TBenchRecord274: IList<TBenchRecord274>;
  L_TBenchRecord275: IList<TBenchRecord275>;
  L_TBenchRecord276: IList<TBenchRecord276>;
  L_TBenchRecord277: IList<TBenchRecord277>;
  L_TBenchRecord278: IList<TBenchRecord278>;
  L_TBenchRecord279: IList<TBenchRecord279>;
  L_TBenchRecord280: IList<TBenchRecord280>;
  L_TBenchRecord281: IList<TBenchRecord281>;
  L_TBenchRecord282: IList<TBenchRecord282>;
  L_TBenchRecord283: IList<TBenchRecord283>;
  L_TBenchRecord284: IList<TBenchRecord284>;
  L_TBenchRecord285: IList<TBenchRecord285>;
  L_TBenchRecord286: IList<TBenchRecord286>;
  L_TBenchRecord287: IList<TBenchRecord287>;
  L_TBenchRecord288: IList<TBenchRecord288>;
  L_TBenchRecord289: IList<TBenchRecord289>;
  L_TBenchRecord290: IList<TBenchRecord290>;
  L_TBenchRecord291: IList<TBenchRecord291>;
  L_TBenchRecord292: IList<TBenchRecord292>;
  L_TBenchRecord293: IList<TBenchRecord293>;
  L_TBenchRecord294: IList<TBenchRecord294>;
  L_TBenchRecord295: IList<TBenchRecord295>;
  L_TBenchRecord296: IList<TBenchRecord296>;
  L_TBenchRecord297: IList<TBenchRecord297>;
  L_TBenchRecord298: IList<TBenchRecord298>;
  L_TBenchRecord299: IList<TBenchRecord299>;
  L_TBenchRecord300: IList<TBenchRecord300>;
  L_TBenchRecord301: IList<TBenchRecord301>;
  L_TBenchRecord302: IList<TBenchRecord302>;
  L_TBenchRecord303: IList<TBenchRecord303>;
  L_TBenchRecord304: IList<TBenchRecord304>;
  L_TBenchRecord305: IList<TBenchRecord305>;
  L_TBenchRecord306: IList<TBenchRecord306>;
  L_TBenchRecord307: IList<TBenchRecord307>;
  L_TBenchRecord308: IList<TBenchRecord308>;
  L_TBenchRecord309: IList<TBenchRecord309>;
  L_TBenchRecord310: IList<TBenchRecord310>;
  L_TBenchRecord311: IList<TBenchRecord311>;
  L_TBenchRecord312: IList<TBenchRecord312>;
  L_TBenchRecord313: IList<TBenchRecord313>;
  L_TBenchRecord314: IList<TBenchRecord314>;
  L_TBenchRecord315: IList<TBenchRecord315>;
  L_TBenchRecord316: IList<TBenchRecord316>;
  L_TBenchRecord317: IList<TBenchRecord317>;
  L_TBenchRecord318: IList<TBenchRecord318>;
  L_TBenchRecord319: IList<TBenchRecord319>;
  L_TBenchRecord320: IList<TBenchRecord320>;
  L_TBenchRecord321: IList<TBenchRecord321>;
  L_TBenchRecord322: IList<TBenchRecord322>;
  L_TBenchRecord323: IList<TBenchRecord323>;
  L_TBenchRecord324: IList<TBenchRecord324>;
  L_TBenchRecord325: IList<TBenchRecord325>;
  L_TBenchRecord326: IList<TBenchRecord326>;
  L_TBenchRecord327: IList<TBenchRecord327>;
  L_TBenchRecord328: IList<TBenchRecord328>;
  L_TBenchRecord329: IList<TBenchRecord329>;
  L_TBenchRecord330: IList<TBenchRecord330>;
  L_TBenchRecord331: IList<TBenchRecord331>;
  L_TBenchRecord332: IList<TBenchRecord332>;
  L_TBenchRecord333: IList<TBenchRecord333>;
  L_TBenchRecord334: IList<TBenchRecord334>;
  L_TBenchRecord335: IList<TBenchRecord335>;
  L_TBenchRecord336: IList<TBenchRecord336>;
  L_TBenchRecord337: IList<TBenchRecord337>;
  L_TBenchRecord338: IList<TBenchRecord338>;
  L_TBenchRecord339: IList<TBenchRecord339>;
  L_TBenchRecord340: IList<TBenchRecord340>;
  L_TBenchRecord341: IList<TBenchRecord341>;
  L_TBenchRecord342: IList<TBenchRecord342>;
  L_TBenchRecord343: IList<TBenchRecord343>;
  L_TBenchRecord344: IList<TBenchRecord344>;
  L_TBenchRecord345: IList<TBenchRecord345>;
  L_TBenchRecord346: IList<TBenchRecord346>;
  L_TBenchRecord347: IList<TBenchRecord347>;
  L_TBenchRecord348: IList<TBenchRecord348>;
  L_TBenchRecord349: IList<TBenchRecord349>;
  L_TBenchRecord350: IList<TBenchRecord350>;
  L_TBenchRecord351: IList<TBenchRecord351>;
  L_TBenchRecord352: IList<TBenchRecord352>;
  L_TBenchRecord353: IList<TBenchRecord353>;
  L_TBenchRecord354: IList<TBenchRecord354>;
  L_TBenchRecord355: IList<TBenchRecord355>;
  L_TBenchRecord356: IList<TBenchRecord356>;
  L_TBenchRecord357: IList<TBenchRecord357>;
  L_TBenchRecord358: IList<TBenchRecord358>;
  L_TBenchRecord359: IList<TBenchRecord359>;
  L_TBenchRecord360: IList<TBenchRecord360>;
  L_TBenchRecord361: IList<TBenchRecord361>;
  L_TBenchRecord362: IList<TBenchRecord362>;
  L_TBenchRecord363: IList<TBenchRecord363>;
  L_TBenchRecord364: IList<TBenchRecord364>;
  L_TBenchRecord365: IList<TBenchRecord365>;
  L_TBenchRecord366: IList<TBenchRecord366>;
  L_TBenchRecord367: IList<TBenchRecord367>;
  L_TBenchRecord368: IList<TBenchRecord368>;
  L_TBenchRecord369: IList<TBenchRecord369>;
  L_TBenchRecord370: IList<TBenchRecord370>;
  L_TBenchRecord371: IList<TBenchRecord371>;
  L_TBenchRecord372: IList<TBenchRecord372>;
  L_TBenchRecord373: IList<TBenchRecord373>;
  L_TBenchRecord374: IList<TBenchRecord374>;
  L_TBenchRecord375: IList<TBenchRecord375>;
  L_TBenchRecord376: IList<TBenchRecord376>;
  L_TBenchRecord377: IList<TBenchRecord377>;
  L_TBenchRecord378: IList<TBenchRecord378>;
  L_TBenchRecord379: IList<TBenchRecord379>;
  L_TBenchRecord380: IList<TBenchRecord380>;
  L_TBenchRecord381: IList<TBenchRecord381>;
  L_TBenchRecord382: IList<TBenchRecord382>;
  L_TBenchRecord383: IList<TBenchRecord383>;
  L_TBenchRecord384: IList<TBenchRecord384>;
  L_TBenchRecord385: IList<TBenchRecord385>;
  L_TBenchRecord386: IList<TBenchRecord386>;
  L_TBenchRecord387: IList<TBenchRecord387>;
  L_TBenchRecord388: IList<TBenchRecord388>;
  L_TBenchRecord389: IList<TBenchRecord389>;
  L_TBenchRecord390: IList<TBenchRecord390>;
  L_TBenchRecord391: IList<TBenchRecord391>;
  L_TBenchRecord392: IList<TBenchRecord392>;
  L_TBenchRecord393: IList<TBenchRecord393>;
  L_TBenchRecord394: IList<TBenchRecord394>;
  L_TBenchRecord395: IList<TBenchRecord395>;
  L_TBenchRecord396: IList<TBenchRecord396>;
  L_TBenchRecord397: IList<TBenchRecord397>;
  L_TBenchRecord398: IList<TBenchRecord398>;
  L_TBenchRecord399: IList<TBenchRecord399>;
  L_TBenchRecord400: IList<TBenchRecord400>;
  L_TBenchRecord401: IList<TBenchRecord401>;
  L_TBenchRecord402: IList<TBenchRecord402>;
  L_TBenchRecord403: IList<TBenchRecord403>;
  L_TBenchRecord404: IList<TBenchRecord404>;
  L_TBenchRecord405: IList<TBenchRecord405>;
  L_TBenchRecord406: IList<TBenchRecord406>;
  L_TBenchRecord407: IList<TBenchRecord407>;
  L_TBenchRecord408: IList<TBenchRecord408>;
  L_TBenchRecord409: IList<TBenchRecord409>;
  L_TBenchRecord410: IList<TBenchRecord410>;
  L_TBenchRecord411: IList<TBenchRecord411>;
  L_TBenchRecord412: IList<TBenchRecord412>;
  L_TBenchRecord413: IList<TBenchRecord413>;
  L_TBenchRecord414: IList<TBenchRecord414>;
  L_TBenchRecord415: IList<TBenchRecord415>;
  L_TBenchRecord416: IList<TBenchRecord416>;
  L_TBenchRecord417: IList<TBenchRecord417>;
  L_TBenchRecord418: IList<TBenchRecord418>;
  L_TBenchRecord419: IList<TBenchRecord419>;
  L_TBenchRecord420: IList<TBenchRecord420>;
  L_TBenchRecord421: IList<TBenchRecord421>;
  L_TBenchRecord422: IList<TBenchRecord422>;
  L_TBenchRecord423: IList<TBenchRecord423>;
  L_TBenchRecord424: IList<TBenchRecord424>;
  L_TBenchRecord425: IList<TBenchRecord425>;
  L_TBenchRecord426: IList<TBenchRecord426>;
  L_TBenchRecord427: IList<TBenchRecord427>;
  L_TBenchRecord428: IList<TBenchRecord428>;
  L_TBenchRecord429: IList<TBenchRecord429>;
  L_TBenchRecord430: IList<TBenchRecord430>;
  L_TBenchRecord431: IList<TBenchRecord431>;
  L_TBenchRecord432: IList<TBenchRecord432>;
  L_TBenchRecord433: IList<TBenchRecord433>;
  L_TBenchRecord434: IList<TBenchRecord434>;
  L_TBenchRecord435: IList<TBenchRecord435>;
  L_TBenchRecord436: IList<TBenchRecord436>;
  L_TBenchRecord437: IList<TBenchRecord437>;
  L_TBenchRecord438: IList<TBenchRecord438>;
  L_TBenchRecord439: IList<TBenchRecord439>;
  L_TBenchRecord440: IList<TBenchRecord440>;
  L_TBenchRecord441: IList<TBenchRecord441>;
  L_TBenchRecord442: IList<TBenchRecord442>;
  L_TBenchRecord443: IList<TBenchRecord443>;
  L_TBenchRecord444: IList<TBenchRecord444>;
  L_TBenchRecord445: IList<TBenchRecord445>;
  L_TBenchRecord446: IList<TBenchRecord446>;
  L_TBenchRecord447: IList<TBenchRecord447>;
  L_TBenchRecord448: IList<TBenchRecord448>;
  L_TBenchRecord449: IList<TBenchRecord449>;
  L_TBenchRecord450: IList<TBenchRecord450>;
  L_TBenchRecord451: IList<TBenchRecord451>;
  L_TBenchRecord452: IList<TBenchRecord452>;
  L_TBenchRecord453: IList<TBenchRecord453>;
  L_TBenchRecord454: IList<TBenchRecord454>;
  L_TBenchRecord455: IList<TBenchRecord455>;
  L_TBenchRecord456: IList<TBenchRecord456>;
  L_TBenchRecord457: IList<TBenchRecord457>;
  L_TBenchRecord458: IList<TBenchRecord458>;
  L_TBenchRecord459: IList<TBenchRecord459>;
  L_TBenchRecord460: IList<TBenchRecord460>;
  L_TBenchRecord461: IList<TBenchRecord461>;
  L_TBenchRecord462: IList<TBenchRecord462>;
  L_TBenchRecord463: IList<TBenchRecord463>;
  L_TBenchRecord464: IList<TBenchRecord464>;
  L_TBenchRecord465: IList<TBenchRecord465>;
  L_TBenchRecord466: IList<TBenchRecord466>;
  L_TBenchRecord467: IList<TBenchRecord467>;
  L_TBenchRecord468: IList<TBenchRecord468>;
  L_TBenchRecord469: IList<TBenchRecord469>;
  L_TBenchRecord470: IList<TBenchRecord470>;
  L_TBenchRecord471: IList<TBenchRecord471>;
  L_TBenchRecord472: IList<TBenchRecord472>;
  L_TBenchRecord473: IList<TBenchRecord473>;
  L_TBenchRecord474: IList<TBenchRecord474>;
  L_TBenchRecord475: IList<TBenchRecord475>;
  L_TBenchRecord476: IList<TBenchRecord476>;
  L_TBenchRecord477: IList<TBenchRecord477>;
  L_TBenchRecord478: IList<TBenchRecord478>;
  L_TBenchRecord479: IList<TBenchRecord479>;
  L_TBenchRecord480: IList<TBenchRecord480>;
  L_TBenchRecord481: IList<TBenchRecord481>;
  L_TBenchRecord482: IList<TBenchRecord482>;
  L_TBenchRecord483: IList<TBenchRecord483>;
  L_TBenchRecord484: IList<TBenchRecord484>;
  L_TBenchRecord485: IList<TBenchRecord485>;
  L_TBenchRecord486: IList<TBenchRecord486>;
  L_TBenchRecord487: IList<TBenchRecord487>;
  L_TBenchRecord488: IList<TBenchRecord488>;
  L_TBenchRecord489: IList<TBenchRecord489>;
  L_TBenchRecord490: IList<TBenchRecord490>;
  L_TBenchRecord491: IList<TBenchRecord491>;
  L_TBenchRecord492: IList<TBenchRecord492>;
  L_TBenchRecord493: IList<TBenchRecord493>;
  L_TBenchRecord494: IList<TBenchRecord494>;
  L_TBenchRecord495: IList<TBenchRecord495>;
  L_TBenchRecord496: IList<TBenchRecord496>;
  L_TBenchRecord497: IList<TBenchRecord497>;
  L_TBenchRecord498: IList<TBenchRecord498>;
  L_TBenchRecord499: IList<TBenchRecord499>;
  L_TBenchRecord500: IList<TBenchRecord500>;
begin
  L_TBenchRecord001 := TCollections.CreateList<TBenchRecord001>;
  L_TBenchRecord001.Add(Default(TBenchRecord001));
  L_TBenchRecord002 := TCollections.CreateList<TBenchRecord002>;
  L_TBenchRecord002.Add(Default(TBenchRecord002));
  L_TBenchRecord003 := TCollections.CreateList<TBenchRecord003>;
  L_TBenchRecord003.Add(Default(TBenchRecord003));
  L_TBenchRecord004 := TCollections.CreateList<TBenchRecord004>;
  L_TBenchRecord004.Add(Default(TBenchRecord004));
  L_TBenchRecord005 := TCollections.CreateList<TBenchRecord005>;
  L_TBenchRecord005.Add(Default(TBenchRecord005));
  L_TBenchRecord006 := TCollections.CreateList<TBenchRecord006>;
  L_TBenchRecord006.Add(Default(TBenchRecord006));
  L_TBenchRecord007 := TCollections.CreateList<TBenchRecord007>;
  L_TBenchRecord007.Add(Default(TBenchRecord007));
  L_TBenchRecord008 := TCollections.CreateList<TBenchRecord008>;
  L_TBenchRecord008.Add(Default(TBenchRecord008));
  L_TBenchRecord009 := TCollections.CreateList<TBenchRecord009>;
  L_TBenchRecord009.Add(Default(TBenchRecord009));
  L_TBenchRecord010 := TCollections.CreateList<TBenchRecord010>;
  L_TBenchRecord010.Add(Default(TBenchRecord010));
  L_TBenchRecord011 := TCollections.CreateList<TBenchRecord011>;
  L_TBenchRecord011.Add(Default(TBenchRecord011));
  L_TBenchRecord012 := TCollections.CreateList<TBenchRecord012>;
  L_TBenchRecord012.Add(Default(TBenchRecord012));
  L_TBenchRecord013 := TCollections.CreateList<TBenchRecord013>;
  L_TBenchRecord013.Add(Default(TBenchRecord013));
  L_TBenchRecord014 := TCollections.CreateList<TBenchRecord014>;
  L_TBenchRecord014.Add(Default(TBenchRecord014));
  L_TBenchRecord015 := TCollections.CreateList<TBenchRecord015>;
  L_TBenchRecord015.Add(Default(TBenchRecord015));
  L_TBenchRecord016 := TCollections.CreateList<TBenchRecord016>;
  L_TBenchRecord016.Add(Default(TBenchRecord016));
  L_TBenchRecord017 := TCollections.CreateList<TBenchRecord017>;
  L_TBenchRecord017.Add(Default(TBenchRecord017));
  L_TBenchRecord018 := TCollections.CreateList<TBenchRecord018>;
  L_TBenchRecord018.Add(Default(TBenchRecord018));
  L_TBenchRecord019 := TCollections.CreateList<TBenchRecord019>;
  L_TBenchRecord019.Add(Default(TBenchRecord019));
  L_TBenchRecord020 := TCollections.CreateList<TBenchRecord020>;
  L_TBenchRecord020.Add(Default(TBenchRecord020));
  L_TBenchRecord021 := TCollections.CreateList<TBenchRecord021>;
  L_TBenchRecord021.Add(Default(TBenchRecord021));
  L_TBenchRecord022 := TCollections.CreateList<TBenchRecord022>;
  L_TBenchRecord022.Add(Default(TBenchRecord022));
  L_TBenchRecord023 := TCollections.CreateList<TBenchRecord023>;
  L_TBenchRecord023.Add(Default(TBenchRecord023));
  L_TBenchRecord024 := TCollections.CreateList<TBenchRecord024>;
  L_TBenchRecord024.Add(Default(TBenchRecord024));
  L_TBenchRecord025 := TCollections.CreateList<TBenchRecord025>;
  L_TBenchRecord025.Add(Default(TBenchRecord025));
  L_TBenchRecord026 := TCollections.CreateList<TBenchRecord026>;
  L_TBenchRecord026.Add(Default(TBenchRecord026));
  L_TBenchRecord027 := TCollections.CreateList<TBenchRecord027>;
  L_TBenchRecord027.Add(Default(TBenchRecord027));
  L_TBenchRecord028 := TCollections.CreateList<TBenchRecord028>;
  L_TBenchRecord028.Add(Default(TBenchRecord028));
  L_TBenchRecord029 := TCollections.CreateList<TBenchRecord029>;
  L_TBenchRecord029.Add(Default(TBenchRecord029));
  L_TBenchRecord030 := TCollections.CreateList<TBenchRecord030>;
  L_TBenchRecord030.Add(Default(TBenchRecord030));
  L_TBenchRecord031 := TCollections.CreateList<TBenchRecord031>;
  L_TBenchRecord031.Add(Default(TBenchRecord031));
  L_TBenchRecord032 := TCollections.CreateList<TBenchRecord032>;
  L_TBenchRecord032.Add(Default(TBenchRecord032));
  L_TBenchRecord033 := TCollections.CreateList<TBenchRecord033>;
  L_TBenchRecord033.Add(Default(TBenchRecord033));
  L_TBenchRecord034 := TCollections.CreateList<TBenchRecord034>;
  L_TBenchRecord034.Add(Default(TBenchRecord034));
  L_TBenchRecord035 := TCollections.CreateList<TBenchRecord035>;
  L_TBenchRecord035.Add(Default(TBenchRecord035));
  L_TBenchRecord036 := TCollections.CreateList<TBenchRecord036>;
  L_TBenchRecord036.Add(Default(TBenchRecord036));
  L_TBenchRecord037 := TCollections.CreateList<TBenchRecord037>;
  L_TBenchRecord037.Add(Default(TBenchRecord037));
  L_TBenchRecord038 := TCollections.CreateList<TBenchRecord038>;
  L_TBenchRecord038.Add(Default(TBenchRecord038));
  L_TBenchRecord039 := TCollections.CreateList<TBenchRecord039>;
  L_TBenchRecord039.Add(Default(TBenchRecord039));
  L_TBenchRecord040 := TCollections.CreateList<TBenchRecord040>;
  L_TBenchRecord040.Add(Default(TBenchRecord040));
  L_TBenchRecord041 := TCollections.CreateList<TBenchRecord041>;
  L_TBenchRecord041.Add(Default(TBenchRecord041));
  L_TBenchRecord042 := TCollections.CreateList<TBenchRecord042>;
  L_TBenchRecord042.Add(Default(TBenchRecord042));
  L_TBenchRecord043 := TCollections.CreateList<TBenchRecord043>;
  L_TBenchRecord043.Add(Default(TBenchRecord043));
  L_TBenchRecord044 := TCollections.CreateList<TBenchRecord044>;
  L_TBenchRecord044.Add(Default(TBenchRecord044));
  L_TBenchRecord045 := TCollections.CreateList<TBenchRecord045>;
  L_TBenchRecord045.Add(Default(TBenchRecord045));
  L_TBenchRecord046 := TCollections.CreateList<TBenchRecord046>;
  L_TBenchRecord046.Add(Default(TBenchRecord046));
  L_TBenchRecord047 := TCollections.CreateList<TBenchRecord047>;
  L_TBenchRecord047.Add(Default(TBenchRecord047));
  L_TBenchRecord048 := TCollections.CreateList<TBenchRecord048>;
  L_TBenchRecord048.Add(Default(TBenchRecord048));
  L_TBenchRecord049 := TCollections.CreateList<TBenchRecord049>;
  L_TBenchRecord049.Add(Default(TBenchRecord049));
  L_TBenchRecord050 := TCollections.CreateList<TBenchRecord050>;
  L_TBenchRecord050.Add(Default(TBenchRecord050));
  L_TBenchRecord051 := TCollections.CreateList<TBenchRecord051>;
  L_TBenchRecord051.Add(Default(TBenchRecord051));
  L_TBenchRecord052 := TCollections.CreateList<TBenchRecord052>;
  L_TBenchRecord052.Add(Default(TBenchRecord052));
  L_TBenchRecord053 := TCollections.CreateList<TBenchRecord053>;
  L_TBenchRecord053.Add(Default(TBenchRecord053));
  L_TBenchRecord054 := TCollections.CreateList<TBenchRecord054>;
  L_TBenchRecord054.Add(Default(TBenchRecord054));
  L_TBenchRecord055 := TCollections.CreateList<TBenchRecord055>;
  L_TBenchRecord055.Add(Default(TBenchRecord055));
  L_TBenchRecord056 := TCollections.CreateList<TBenchRecord056>;
  L_TBenchRecord056.Add(Default(TBenchRecord056));
  L_TBenchRecord057 := TCollections.CreateList<TBenchRecord057>;
  L_TBenchRecord057.Add(Default(TBenchRecord057));
  L_TBenchRecord058 := TCollections.CreateList<TBenchRecord058>;
  L_TBenchRecord058.Add(Default(TBenchRecord058));
  L_TBenchRecord059 := TCollections.CreateList<TBenchRecord059>;
  L_TBenchRecord059.Add(Default(TBenchRecord059));
  L_TBenchRecord060 := TCollections.CreateList<TBenchRecord060>;
  L_TBenchRecord060.Add(Default(TBenchRecord060));
  L_TBenchRecord061 := TCollections.CreateList<TBenchRecord061>;
  L_TBenchRecord061.Add(Default(TBenchRecord061));
  L_TBenchRecord062 := TCollections.CreateList<TBenchRecord062>;
  L_TBenchRecord062.Add(Default(TBenchRecord062));
  L_TBenchRecord063 := TCollections.CreateList<TBenchRecord063>;
  L_TBenchRecord063.Add(Default(TBenchRecord063));
  L_TBenchRecord064 := TCollections.CreateList<TBenchRecord064>;
  L_TBenchRecord064.Add(Default(TBenchRecord064));
  L_TBenchRecord065 := TCollections.CreateList<TBenchRecord065>;
  L_TBenchRecord065.Add(Default(TBenchRecord065));
  L_TBenchRecord066 := TCollections.CreateList<TBenchRecord066>;
  L_TBenchRecord066.Add(Default(TBenchRecord066));
  L_TBenchRecord067 := TCollections.CreateList<TBenchRecord067>;
  L_TBenchRecord067.Add(Default(TBenchRecord067));
  L_TBenchRecord068 := TCollections.CreateList<TBenchRecord068>;
  L_TBenchRecord068.Add(Default(TBenchRecord068));
  L_TBenchRecord069 := TCollections.CreateList<TBenchRecord069>;
  L_TBenchRecord069.Add(Default(TBenchRecord069));
  L_TBenchRecord070 := TCollections.CreateList<TBenchRecord070>;
  L_TBenchRecord070.Add(Default(TBenchRecord070));
  L_TBenchRecord071 := TCollections.CreateList<TBenchRecord071>;
  L_TBenchRecord071.Add(Default(TBenchRecord071));
  L_TBenchRecord072 := TCollections.CreateList<TBenchRecord072>;
  L_TBenchRecord072.Add(Default(TBenchRecord072));
  L_TBenchRecord073 := TCollections.CreateList<TBenchRecord073>;
  L_TBenchRecord073.Add(Default(TBenchRecord073));
  L_TBenchRecord074 := TCollections.CreateList<TBenchRecord074>;
  L_TBenchRecord074.Add(Default(TBenchRecord074));
  L_TBenchRecord075 := TCollections.CreateList<TBenchRecord075>;
  L_TBenchRecord075.Add(Default(TBenchRecord075));
  L_TBenchRecord076 := TCollections.CreateList<TBenchRecord076>;
  L_TBenchRecord076.Add(Default(TBenchRecord076));
  L_TBenchRecord077 := TCollections.CreateList<TBenchRecord077>;
  L_TBenchRecord077.Add(Default(TBenchRecord077));
  L_TBenchRecord078 := TCollections.CreateList<TBenchRecord078>;
  L_TBenchRecord078.Add(Default(TBenchRecord078));
  L_TBenchRecord079 := TCollections.CreateList<TBenchRecord079>;
  L_TBenchRecord079.Add(Default(TBenchRecord079));
  L_TBenchRecord080 := TCollections.CreateList<TBenchRecord080>;
  L_TBenchRecord080.Add(Default(TBenchRecord080));
  L_TBenchRecord081 := TCollections.CreateList<TBenchRecord081>;
  L_TBenchRecord081.Add(Default(TBenchRecord081));
  L_TBenchRecord082 := TCollections.CreateList<TBenchRecord082>;
  L_TBenchRecord082.Add(Default(TBenchRecord082));
  L_TBenchRecord083 := TCollections.CreateList<TBenchRecord083>;
  L_TBenchRecord083.Add(Default(TBenchRecord083));
  L_TBenchRecord084 := TCollections.CreateList<TBenchRecord084>;
  L_TBenchRecord084.Add(Default(TBenchRecord084));
  L_TBenchRecord085 := TCollections.CreateList<TBenchRecord085>;
  L_TBenchRecord085.Add(Default(TBenchRecord085));
  L_TBenchRecord086 := TCollections.CreateList<TBenchRecord086>;
  L_TBenchRecord086.Add(Default(TBenchRecord086));
  L_TBenchRecord087 := TCollections.CreateList<TBenchRecord087>;
  L_TBenchRecord087.Add(Default(TBenchRecord087));
  L_TBenchRecord088 := TCollections.CreateList<TBenchRecord088>;
  L_TBenchRecord088.Add(Default(TBenchRecord088));
  L_TBenchRecord089 := TCollections.CreateList<TBenchRecord089>;
  L_TBenchRecord089.Add(Default(TBenchRecord089));
  L_TBenchRecord090 := TCollections.CreateList<TBenchRecord090>;
  L_TBenchRecord090.Add(Default(TBenchRecord090));
  L_TBenchRecord091 := TCollections.CreateList<TBenchRecord091>;
  L_TBenchRecord091.Add(Default(TBenchRecord091));
  L_TBenchRecord092 := TCollections.CreateList<TBenchRecord092>;
  L_TBenchRecord092.Add(Default(TBenchRecord092));
  L_TBenchRecord093 := TCollections.CreateList<TBenchRecord093>;
  L_TBenchRecord093.Add(Default(TBenchRecord093));
  L_TBenchRecord094 := TCollections.CreateList<TBenchRecord094>;
  L_TBenchRecord094.Add(Default(TBenchRecord094));
  L_TBenchRecord095 := TCollections.CreateList<TBenchRecord095>;
  L_TBenchRecord095.Add(Default(TBenchRecord095));
  L_TBenchRecord096 := TCollections.CreateList<TBenchRecord096>;
  L_TBenchRecord096.Add(Default(TBenchRecord096));
  L_TBenchRecord097 := TCollections.CreateList<TBenchRecord097>;
  L_TBenchRecord097.Add(Default(TBenchRecord097));
  L_TBenchRecord098 := TCollections.CreateList<TBenchRecord098>;
  L_TBenchRecord098.Add(Default(TBenchRecord098));
  L_TBenchRecord099 := TCollections.CreateList<TBenchRecord099>;
  L_TBenchRecord099.Add(Default(TBenchRecord099));
  L_TBenchRecord100 := TCollections.CreateList<TBenchRecord100>;
  L_TBenchRecord100.Add(Default(TBenchRecord100));
  L_TBenchRecord101 := TCollections.CreateList<TBenchRecord101>;
  L_TBenchRecord101.Add(Default(TBenchRecord101));
  L_TBenchRecord102 := TCollections.CreateList<TBenchRecord102>;
  L_TBenchRecord102.Add(Default(TBenchRecord102));
  L_TBenchRecord103 := TCollections.CreateList<TBenchRecord103>;
  L_TBenchRecord103.Add(Default(TBenchRecord103));
  L_TBenchRecord104 := TCollections.CreateList<TBenchRecord104>;
  L_TBenchRecord104.Add(Default(TBenchRecord104));
  L_TBenchRecord105 := TCollections.CreateList<TBenchRecord105>;
  L_TBenchRecord105.Add(Default(TBenchRecord105));
  L_TBenchRecord106 := TCollections.CreateList<TBenchRecord106>;
  L_TBenchRecord106.Add(Default(TBenchRecord106));
  L_TBenchRecord107 := TCollections.CreateList<TBenchRecord107>;
  L_TBenchRecord107.Add(Default(TBenchRecord107));
  L_TBenchRecord108 := TCollections.CreateList<TBenchRecord108>;
  L_TBenchRecord108.Add(Default(TBenchRecord108));
  L_TBenchRecord109 := TCollections.CreateList<TBenchRecord109>;
  L_TBenchRecord109.Add(Default(TBenchRecord109));
  L_TBenchRecord110 := TCollections.CreateList<TBenchRecord110>;
  L_TBenchRecord110.Add(Default(TBenchRecord110));
  L_TBenchRecord111 := TCollections.CreateList<TBenchRecord111>;
  L_TBenchRecord111.Add(Default(TBenchRecord111));
  L_TBenchRecord112 := TCollections.CreateList<TBenchRecord112>;
  L_TBenchRecord112.Add(Default(TBenchRecord112));
  L_TBenchRecord113 := TCollections.CreateList<TBenchRecord113>;
  L_TBenchRecord113.Add(Default(TBenchRecord113));
  L_TBenchRecord114 := TCollections.CreateList<TBenchRecord114>;
  L_TBenchRecord114.Add(Default(TBenchRecord114));
  L_TBenchRecord115 := TCollections.CreateList<TBenchRecord115>;
  L_TBenchRecord115.Add(Default(TBenchRecord115));
  L_TBenchRecord116 := TCollections.CreateList<TBenchRecord116>;
  L_TBenchRecord116.Add(Default(TBenchRecord116));
  L_TBenchRecord117 := TCollections.CreateList<TBenchRecord117>;
  L_TBenchRecord117.Add(Default(TBenchRecord117));
  L_TBenchRecord118 := TCollections.CreateList<TBenchRecord118>;
  L_TBenchRecord118.Add(Default(TBenchRecord118));
  L_TBenchRecord119 := TCollections.CreateList<TBenchRecord119>;
  L_TBenchRecord119.Add(Default(TBenchRecord119));
  L_TBenchRecord120 := TCollections.CreateList<TBenchRecord120>;
  L_TBenchRecord120.Add(Default(TBenchRecord120));
  L_TBenchRecord121 := TCollections.CreateList<TBenchRecord121>;
  L_TBenchRecord121.Add(Default(TBenchRecord121));
  L_TBenchRecord122 := TCollections.CreateList<TBenchRecord122>;
  L_TBenchRecord122.Add(Default(TBenchRecord122));
  L_TBenchRecord123 := TCollections.CreateList<TBenchRecord123>;
  L_TBenchRecord123.Add(Default(TBenchRecord123));
  L_TBenchRecord124 := TCollections.CreateList<TBenchRecord124>;
  L_TBenchRecord124.Add(Default(TBenchRecord124));
  L_TBenchRecord125 := TCollections.CreateList<TBenchRecord125>;
  L_TBenchRecord125.Add(Default(TBenchRecord125));
  L_TBenchRecord126 := TCollections.CreateList<TBenchRecord126>;
  L_TBenchRecord126.Add(Default(TBenchRecord126));
  L_TBenchRecord127 := TCollections.CreateList<TBenchRecord127>;
  L_TBenchRecord127.Add(Default(TBenchRecord127));
  L_TBenchRecord128 := TCollections.CreateList<TBenchRecord128>;
  L_TBenchRecord128.Add(Default(TBenchRecord128));
  L_TBenchRecord129 := TCollections.CreateList<TBenchRecord129>;
  L_TBenchRecord129.Add(Default(TBenchRecord129));
  L_TBenchRecord130 := TCollections.CreateList<TBenchRecord130>;
  L_TBenchRecord130.Add(Default(TBenchRecord130));
  L_TBenchRecord131 := TCollections.CreateList<TBenchRecord131>;
  L_TBenchRecord131.Add(Default(TBenchRecord131));
  L_TBenchRecord132 := TCollections.CreateList<TBenchRecord132>;
  L_TBenchRecord132.Add(Default(TBenchRecord132));
  L_TBenchRecord133 := TCollections.CreateList<TBenchRecord133>;
  L_TBenchRecord133.Add(Default(TBenchRecord133));
  L_TBenchRecord134 := TCollections.CreateList<TBenchRecord134>;
  L_TBenchRecord134.Add(Default(TBenchRecord134));
  L_TBenchRecord135 := TCollections.CreateList<TBenchRecord135>;
  L_TBenchRecord135.Add(Default(TBenchRecord135));
  L_TBenchRecord136 := TCollections.CreateList<TBenchRecord136>;
  L_TBenchRecord136.Add(Default(TBenchRecord136));
  L_TBenchRecord137 := TCollections.CreateList<TBenchRecord137>;
  L_TBenchRecord137.Add(Default(TBenchRecord137));
  L_TBenchRecord138 := TCollections.CreateList<TBenchRecord138>;
  L_TBenchRecord138.Add(Default(TBenchRecord138));
  L_TBenchRecord139 := TCollections.CreateList<TBenchRecord139>;
  L_TBenchRecord139.Add(Default(TBenchRecord139));
  L_TBenchRecord140 := TCollections.CreateList<TBenchRecord140>;
  L_TBenchRecord140.Add(Default(TBenchRecord140));
  L_TBenchRecord141 := TCollections.CreateList<TBenchRecord141>;
  L_TBenchRecord141.Add(Default(TBenchRecord141));
  L_TBenchRecord142 := TCollections.CreateList<TBenchRecord142>;
  L_TBenchRecord142.Add(Default(TBenchRecord142));
  L_TBenchRecord143 := TCollections.CreateList<TBenchRecord143>;
  L_TBenchRecord143.Add(Default(TBenchRecord143));
  L_TBenchRecord144 := TCollections.CreateList<TBenchRecord144>;
  L_TBenchRecord144.Add(Default(TBenchRecord144));
  L_TBenchRecord145 := TCollections.CreateList<TBenchRecord145>;
  L_TBenchRecord145.Add(Default(TBenchRecord145));
  L_TBenchRecord146 := TCollections.CreateList<TBenchRecord146>;
  L_TBenchRecord146.Add(Default(TBenchRecord146));
  L_TBenchRecord147 := TCollections.CreateList<TBenchRecord147>;
  L_TBenchRecord147.Add(Default(TBenchRecord147));
  L_TBenchRecord148 := TCollections.CreateList<TBenchRecord148>;
  L_TBenchRecord148.Add(Default(TBenchRecord148));
  L_TBenchRecord149 := TCollections.CreateList<TBenchRecord149>;
  L_TBenchRecord149.Add(Default(TBenchRecord149));
  L_TBenchRecord150 := TCollections.CreateList<TBenchRecord150>;
  L_TBenchRecord150.Add(Default(TBenchRecord150));
  L_TBenchRecord151 := TCollections.CreateList<TBenchRecord151>;
  L_TBenchRecord151.Add(Default(TBenchRecord151));
  L_TBenchRecord152 := TCollections.CreateList<TBenchRecord152>;
  L_TBenchRecord152.Add(Default(TBenchRecord152));
  L_TBenchRecord153 := TCollections.CreateList<TBenchRecord153>;
  L_TBenchRecord153.Add(Default(TBenchRecord153));
  L_TBenchRecord154 := TCollections.CreateList<TBenchRecord154>;
  L_TBenchRecord154.Add(Default(TBenchRecord154));
  L_TBenchRecord155 := TCollections.CreateList<TBenchRecord155>;
  L_TBenchRecord155.Add(Default(TBenchRecord155));
  L_TBenchRecord156 := TCollections.CreateList<TBenchRecord156>;
  L_TBenchRecord156.Add(Default(TBenchRecord156));
  L_TBenchRecord157 := TCollections.CreateList<TBenchRecord157>;
  L_TBenchRecord157.Add(Default(TBenchRecord157));
  L_TBenchRecord158 := TCollections.CreateList<TBenchRecord158>;
  L_TBenchRecord158.Add(Default(TBenchRecord158));
  L_TBenchRecord159 := TCollections.CreateList<TBenchRecord159>;
  L_TBenchRecord159.Add(Default(TBenchRecord159));
  L_TBenchRecord160 := TCollections.CreateList<TBenchRecord160>;
  L_TBenchRecord160.Add(Default(TBenchRecord160));
  L_TBenchRecord161 := TCollections.CreateList<TBenchRecord161>;
  L_TBenchRecord161.Add(Default(TBenchRecord161));
  L_TBenchRecord162 := TCollections.CreateList<TBenchRecord162>;
  L_TBenchRecord162.Add(Default(TBenchRecord162));
  L_TBenchRecord163 := TCollections.CreateList<TBenchRecord163>;
  L_TBenchRecord163.Add(Default(TBenchRecord163));
  L_TBenchRecord164 := TCollections.CreateList<TBenchRecord164>;
  L_TBenchRecord164.Add(Default(TBenchRecord164));
  L_TBenchRecord165 := TCollections.CreateList<TBenchRecord165>;
  L_TBenchRecord165.Add(Default(TBenchRecord165));
  L_TBenchRecord166 := TCollections.CreateList<TBenchRecord166>;
  L_TBenchRecord166.Add(Default(TBenchRecord166));
  L_TBenchRecord167 := TCollections.CreateList<TBenchRecord167>;
  L_TBenchRecord167.Add(Default(TBenchRecord167));
  L_TBenchRecord168 := TCollections.CreateList<TBenchRecord168>;
  L_TBenchRecord168.Add(Default(TBenchRecord168));
  L_TBenchRecord169 := TCollections.CreateList<TBenchRecord169>;
  L_TBenchRecord169.Add(Default(TBenchRecord169));
  L_TBenchRecord170 := TCollections.CreateList<TBenchRecord170>;
  L_TBenchRecord170.Add(Default(TBenchRecord170));
  L_TBenchRecord171 := TCollections.CreateList<TBenchRecord171>;
  L_TBenchRecord171.Add(Default(TBenchRecord171));
  L_TBenchRecord172 := TCollections.CreateList<TBenchRecord172>;
  L_TBenchRecord172.Add(Default(TBenchRecord172));
  L_TBenchRecord173 := TCollections.CreateList<TBenchRecord173>;
  L_TBenchRecord173.Add(Default(TBenchRecord173));
  L_TBenchRecord174 := TCollections.CreateList<TBenchRecord174>;
  L_TBenchRecord174.Add(Default(TBenchRecord174));
  L_TBenchRecord175 := TCollections.CreateList<TBenchRecord175>;
  L_TBenchRecord175.Add(Default(TBenchRecord175));
  L_TBenchRecord176 := TCollections.CreateList<TBenchRecord176>;
  L_TBenchRecord176.Add(Default(TBenchRecord176));
  L_TBenchRecord177 := TCollections.CreateList<TBenchRecord177>;
  L_TBenchRecord177.Add(Default(TBenchRecord177));
  L_TBenchRecord178 := TCollections.CreateList<TBenchRecord178>;
  L_TBenchRecord178.Add(Default(TBenchRecord178));
  L_TBenchRecord179 := TCollections.CreateList<TBenchRecord179>;
  L_TBenchRecord179.Add(Default(TBenchRecord179));
  L_TBenchRecord180 := TCollections.CreateList<TBenchRecord180>;
  L_TBenchRecord180.Add(Default(TBenchRecord180));
  L_TBenchRecord181 := TCollections.CreateList<TBenchRecord181>;
  L_TBenchRecord181.Add(Default(TBenchRecord181));
  L_TBenchRecord182 := TCollections.CreateList<TBenchRecord182>;
  L_TBenchRecord182.Add(Default(TBenchRecord182));
  L_TBenchRecord183 := TCollections.CreateList<TBenchRecord183>;
  L_TBenchRecord183.Add(Default(TBenchRecord183));
  L_TBenchRecord184 := TCollections.CreateList<TBenchRecord184>;
  L_TBenchRecord184.Add(Default(TBenchRecord184));
  L_TBenchRecord185 := TCollections.CreateList<TBenchRecord185>;
  L_TBenchRecord185.Add(Default(TBenchRecord185));
  L_TBenchRecord186 := TCollections.CreateList<TBenchRecord186>;
  L_TBenchRecord186.Add(Default(TBenchRecord186));
  L_TBenchRecord187 := TCollections.CreateList<TBenchRecord187>;
  L_TBenchRecord187.Add(Default(TBenchRecord187));
  L_TBenchRecord188 := TCollections.CreateList<TBenchRecord188>;
  L_TBenchRecord188.Add(Default(TBenchRecord188));
  L_TBenchRecord189 := TCollections.CreateList<TBenchRecord189>;
  L_TBenchRecord189.Add(Default(TBenchRecord189));
  L_TBenchRecord190 := TCollections.CreateList<TBenchRecord190>;
  L_TBenchRecord190.Add(Default(TBenchRecord190));
  L_TBenchRecord191 := TCollections.CreateList<TBenchRecord191>;
  L_TBenchRecord191.Add(Default(TBenchRecord191));
  L_TBenchRecord192 := TCollections.CreateList<TBenchRecord192>;
  L_TBenchRecord192.Add(Default(TBenchRecord192));
  L_TBenchRecord193 := TCollections.CreateList<TBenchRecord193>;
  L_TBenchRecord193.Add(Default(TBenchRecord193));
  L_TBenchRecord194 := TCollections.CreateList<TBenchRecord194>;
  L_TBenchRecord194.Add(Default(TBenchRecord194));
  L_TBenchRecord195 := TCollections.CreateList<TBenchRecord195>;
  L_TBenchRecord195.Add(Default(TBenchRecord195));
  L_TBenchRecord196 := TCollections.CreateList<TBenchRecord196>;
  L_TBenchRecord196.Add(Default(TBenchRecord196));
  L_TBenchRecord197 := TCollections.CreateList<TBenchRecord197>;
  L_TBenchRecord197.Add(Default(TBenchRecord197));
  L_TBenchRecord198 := TCollections.CreateList<TBenchRecord198>;
  L_TBenchRecord198.Add(Default(TBenchRecord198));
  L_TBenchRecord199 := TCollections.CreateList<TBenchRecord199>;
  L_TBenchRecord199.Add(Default(TBenchRecord199));
  L_TBenchRecord200 := TCollections.CreateList<TBenchRecord200>;
  L_TBenchRecord200.Add(Default(TBenchRecord200));
  L_TBenchRecord201 := TCollections.CreateList<TBenchRecord201>;
  L_TBenchRecord201.Add(Default(TBenchRecord201));
  L_TBenchRecord202 := TCollections.CreateList<TBenchRecord202>;
  L_TBenchRecord202.Add(Default(TBenchRecord202));
  L_TBenchRecord203 := TCollections.CreateList<TBenchRecord203>;
  L_TBenchRecord203.Add(Default(TBenchRecord203));
  L_TBenchRecord204 := TCollections.CreateList<TBenchRecord204>;
  L_TBenchRecord204.Add(Default(TBenchRecord204));
  L_TBenchRecord205 := TCollections.CreateList<TBenchRecord205>;
  L_TBenchRecord205.Add(Default(TBenchRecord205));
  L_TBenchRecord206 := TCollections.CreateList<TBenchRecord206>;
  L_TBenchRecord206.Add(Default(TBenchRecord206));
  L_TBenchRecord207 := TCollections.CreateList<TBenchRecord207>;
  L_TBenchRecord207.Add(Default(TBenchRecord207));
  L_TBenchRecord208 := TCollections.CreateList<TBenchRecord208>;
  L_TBenchRecord208.Add(Default(TBenchRecord208));
  L_TBenchRecord209 := TCollections.CreateList<TBenchRecord209>;
  L_TBenchRecord209.Add(Default(TBenchRecord209));
  L_TBenchRecord210 := TCollections.CreateList<TBenchRecord210>;
  L_TBenchRecord210.Add(Default(TBenchRecord210));
  L_TBenchRecord211 := TCollections.CreateList<TBenchRecord211>;
  L_TBenchRecord211.Add(Default(TBenchRecord211));
  L_TBenchRecord212 := TCollections.CreateList<TBenchRecord212>;
  L_TBenchRecord212.Add(Default(TBenchRecord212));
  L_TBenchRecord213 := TCollections.CreateList<TBenchRecord213>;
  L_TBenchRecord213.Add(Default(TBenchRecord213));
  L_TBenchRecord214 := TCollections.CreateList<TBenchRecord214>;
  L_TBenchRecord214.Add(Default(TBenchRecord214));
  L_TBenchRecord215 := TCollections.CreateList<TBenchRecord215>;
  L_TBenchRecord215.Add(Default(TBenchRecord215));
  L_TBenchRecord216 := TCollections.CreateList<TBenchRecord216>;
  L_TBenchRecord216.Add(Default(TBenchRecord216));
  L_TBenchRecord217 := TCollections.CreateList<TBenchRecord217>;
  L_TBenchRecord217.Add(Default(TBenchRecord217));
  L_TBenchRecord218 := TCollections.CreateList<TBenchRecord218>;
  L_TBenchRecord218.Add(Default(TBenchRecord218));
  L_TBenchRecord219 := TCollections.CreateList<TBenchRecord219>;
  L_TBenchRecord219.Add(Default(TBenchRecord219));
  L_TBenchRecord220 := TCollections.CreateList<TBenchRecord220>;
  L_TBenchRecord220.Add(Default(TBenchRecord220));
  L_TBenchRecord221 := TCollections.CreateList<TBenchRecord221>;
  L_TBenchRecord221.Add(Default(TBenchRecord221));
  L_TBenchRecord222 := TCollections.CreateList<TBenchRecord222>;
  L_TBenchRecord222.Add(Default(TBenchRecord222));
  L_TBenchRecord223 := TCollections.CreateList<TBenchRecord223>;
  L_TBenchRecord223.Add(Default(TBenchRecord223));
  L_TBenchRecord224 := TCollections.CreateList<TBenchRecord224>;
  L_TBenchRecord224.Add(Default(TBenchRecord224));
  L_TBenchRecord225 := TCollections.CreateList<TBenchRecord225>;
  L_TBenchRecord225.Add(Default(TBenchRecord225));
  L_TBenchRecord226 := TCollections.CreateList<TBenchRecord226>;
  L_TBenchRecord226.Add(Default(TBenchRecord226));
  L_TBenchRecord227 := TCollections.CreateList<TBenchRecord227>;
  L_TBenchRecord227.Add(Default(TBenchRecord227));
  L_TBenchRecord228 := TCollections.CreateList<TBenchRecord228>;
  L_TBenchRecord228.Add(Default(TBenchRecord228));
  L_TBenchRecord229 := TCollections.CreateList<TBenchRecord229>;
  L_TBenchRecord229.Add(Default(TBenchRecord229));
  L_TBenchRecord230 := TCollections.CreateList<TBenchRecord230>;
  L_TBenchRecord230.Add(Default(TBenchRecord230));
  L_TBenchRecord231 := TCollections.CreateList<TBenchRecord231>;
  L_TBenchRecord231.Add(Default(TBenchRecord231));
  L_TBenchRecord232 := TCollections.CreateList<TBenchRecord232>;
  L_TBenchRecord232.Add(Default(TBenchRecord232));
  L_TBenchRecord233 := TCollections.CreateList<TBenchRecord233>;
  L_TBenchRecord233.Add(Default(TBenchRecord233));
  L_TBenchRecord234 := TCollections.CreateList<TBenchRecord234>;
  L_TBenchRecord234.Add(Default(TBenchRecord234));
  L_TBenchRecord235 := TCollections.CreateList<TBenchRecord235>;
  L_TBenchRecord235.Add(Default(TBenchRecord235));
  L_TBenchRecord236 := TCollections.CreateList<TBenchRecord236>;
  L_TBenchRecord236.Add(Default(TBenchRecord236));
  L_TBenchRecord237 := TCollections.CreateList<TBenchRecord237>;
  L_TBenchRecord237.Add(Default(TBenchRecord237));
  L_TBenchRecord238 := TCollections.CreateList<TBenchRecord238>;
  L_TBenchRecord238.Add(Default(TBenchRecord238));
  L_TBenchRecord239 := TCollections.CreateList<TBenchRecord239>;
  L_TBenchRecord239.Add(Default(TBenchRecord239));
  L_TBenchRecord240 := TCollections.CreateList<TBenchRecord240>;
  L_TBenchRecord240.Add(Default(TBenchRecord240));
  L_TBenchRecord241 := TCollections.CreateList<TBenchRecord241>;
  L_TBenchRecord241.Add(Default(TBenchRecord241));
  L_TBenchRecord242 := TCollections.CreateList<TBenchRecord242>;
  L_TBenchRecord242.Add(Default(TBenchRecord242));
  L_TBenchRecord243 := TCollections.CreateList<TBenchRecord243>;
  L_TBenchRecord243.Add(Default(TBenchRecord243));
  L_TBenchRecord244 := TCollections.CreateList<TBenchRecord244>;
  L_TBenchRecord244.Add(Default(TBenchRecord244));
  L_TBenchRecord245 := TCollections.CreateList<TBenchRecord245>;
  L_TBenchRecord245.Add(Default(TBenchRecord245));
  L_TBenchRecord246 := TCollections.CreateList<TBenchRecord246>;
  L_TBenchRecord246.Add(Default(TBenchRecord246));
  L_TBenchRecord247 := TCollections.CreateList<TBenchRecord247>;
  L_TBenchRecord247.Add(Default(TBenchRecord247));
  L_TBenchRecord248 := TCollections.CreateList<TBenchRecord248>;
  L_TBenchRecord248.Add(Default(TBenchRecord248));
  L_TBenchRecord249 := TCollections.CreateList<TBenchRecord249>;
  L_TBenchRecord249.Add(Default(TBenchRecord249));
  L_TBenchRecord250 := TCollections.CreateList<TBenchRecord250>;
  L_TBenchRecord250.Add(Default(TBenchRecord250));
  L_TBenchRecord251 := TCollections.CreateList<TBenchRecord251>;
  L_TBenchRecord251.Add(Default(TBenchRecord251));
  L_TBenchRecord252 := TCollections.CreateList<TBenchRecord252>;
  L_TBenchRecord252.Add(Default(TBenchRecord252));
  L_TBenchRecord253 := TCollections.CreateList<TBenchRecord253>;
  L_TBenchRecord253.Add(Default(TBenchRecord253));
  L_TBenchRecord254 := TCollections.CreateList<TBenchRecord254>;
  L_TBenchRecord254.Add(Default(TBenchRecord254));
  L_TBenchRecord255 := TCollections.CreateList<TBenchRecord255>;
  L_TBenchRecord255.Add(Default(TBenchRecord255));
  L_TBenchRecord256 := TCollections.CreateList<TBenchRecord256>;
  L_TBenchRecord256.Add(Default(TBenchRecord256));
  L_TBenchRecord257 := TCollections.CreateList<TBenchRecord257>;
  L_TBenchRecord257.Add(Default(TBenchRecord257));
  L_TBenchRecord258 := TCollections.CreateList<TBenchRecord258>;
  L_TBenchRecord258.Add(Default(TBenchRecord258));
  L_TBenchRecord259 := TCollections.CreateList<TBenchRecord259>;
  L_TBenchRecord259.Add(Default(TBenchRecord259));
  L_TBenchRecord260 := TCollections.CreateList<TBenchRecord260>;
  L_TBenchRecord260.Add(Default(TBenchRecord260));
  L_TBenchRecord261 := TCollections.CreateList<TBenchRecord261>;
  L_TBenchRecord261.Add(Default(TBenchRecord261));
  L_TBenchRecord262 := TCollections.CreateList<TBenchRecord262>;
  L_TBenchRecord262.Add(Default(TBenchRecord262));
  L_TBenchRecord263 := TCollections.CreateList<TBenchRecord263>;
  L_TBenchRecord263.Add(Default(TBenchRecord263));
  L_TBenchRecord264 := TCollections.CreateList<TBenchRecord264>;
  L_TBenchRecord264.Add(Default(TBenchRecord264));
  L_TBenchRecord265 := TCollections.CreateList<TBenchRecord265>;
  L_TBenchRecord265.Add(Default(TBenchRecord265));
  L_TBenchRecord266 := TCollections.CreateList<TBenchRecord266>;
  L_TBenchRecord266.Add(Default(TBenchRecord266));
  L_TBenchRecord267 := TCollections.CreateList<TBenchRecord267>;
  L_TBenchRecord267.Add(Default(TBenchRecord267));
  L_TBenchRecord268 := TCollections.CreateList<TBenchRecord268>;
  L_TBenchRecord268.Add(Default(TBenchRecord268));
  L_TBenchRecord269 := TCollections.CreateList<TBenchRecord269>;
  L_TBenchRecord269.Add(Default(TBenchRecord269));
  L_TBenchRecord270 := TCollections.CreateList<TBenchRecord270>;
  L_TBenchRecord270.Add(Default(TBenchRecord270));
  L_TBenchRecord271 := TCollections.CreateList<TBenchRecord271>;
  L_TBenchRecord271.Add(Default(TBenchRecord271));
  L_TBenchRecord272 := TCollections.CreateList<TBenchRecord272>;
  L_TBenchRecord272.Add(Default(TBenchRecord272));
  L_TBenchRecord273 := TCollections.CreateList<TBenchRecord273>;
  L_TBenchRecord273.Add(Default(TBenchRecord273));
  L_TBenchRecord274 := TCollections.CreateList<TBenchRecord274>;
  L_TBenchRecord274.Add(Default(TBenchRecord274));
  L_TBenchRecord275 := TCollections.CreateList<TBenchRecord275>;
  L_TBenchRecord275.Add(Default(TBenchRecord275));
  L_TBenchRecord276 := TCollections.CreateList<TBenchRecord276>;
  L_TBenchRecord276.Add(Default(TBenchRecord276));
  L_TBenchRecord277 := TCollections.CreateList<TBenchRecord277>;
  L_TBenchRecord277.Add(Default(TBenchRecord277));
  L_TBenchRecord278 := TCollections.CreateList<TBenchRecord278>;
  L_TBenchRecord278.Add(Default(TBenchRecord278));
  L_TBenchRecord279 := TCollections.CreateList<TBenchRecord279>;
  L_TBenchRecord279.Add(Default(TBenchRecord279));
  L_TBenchRecord280 := TCollections.CreateList<TBenchRecord280>;
  L_TBenchRecord280.Add(Default(TBenchRecord280));
  L_TBenchRecord281 := TCollections.CreateList<TBenchRecord281>;
  L_TBenchRecord281.Add(Default(TBenchRecord281));
  L_TBenchRecord282 := TCollections.CreateList<TBenchRecord282>;
  L_TBenchRecord282.Add(Default(TBenchRecord282));
  L_TBenchRecord283 := TCollections.CreateList<TBenchRecord283>;
  L_TBenchRecord283.Add(Default(TBenchRecord283));
  L_TBenchRecord284 := TCollections.CreateList<TBenchRecord284>;
  L_TBenchRecord284.Add(Default(TBenchRecord284));
  L_TBenchRecord285 := TCollections.CreateList<TBenchRecord285>;
  L_TBenchRecord285.Add(Default(TBenchRecord285));
  L_TBenchRecord286 := TCollections.CreateList<TBenchRecord286>;
  L_TBenchRecord286.Add(Default(TBenchRecord286));
  L_TBenchRecord287 := TCollections.CreateList<TBenchRecord287>;
  L_TBenchRecord287.Add(Default(TBenchRecord287));
  L_TBenchRecord288 := TCollections.CreateList<TBenchRecord288>;
  L_TBenchRecord288.Add(Default(TBenchRecord288));
  L_TBenchRecord289 := TCollections.CreateList<TBenchRecord289>;
  L_TBenchRecord289.Add(Default(TBenchRecord289));
  L_TBenchRecord290 := TCollections.CreateList<TBenchRecord290>;
  L_TBenchRecord290.Add(Default(TBenchRecord290));
  L_TBenchRecord291 := TCollections.CreateList<TBenchRecord291>;
  L_TBenchRecord291.Add(Default(TBenchRecord291));
  L_TBenchRecord292 := TCollections.CreateList<TBenchRecord292>;
  L_TBenchRecord292.Add(Default(TBenchRecord292));
  L_TBenchRecord293 := TCollections.CreateList<TBenchRecord293>;
  L_TBenchRecord293.Add(Default(TBenchRecord293));
  L_TBenchRecord294 := TCollections.CreateList<TBenchRecord294>;
  L_TBenchRecord294.Add(Default(TBenchRecord294));
  L_TBenchRecord295 := TCollections.CreateList<TBenchRecord295>;
  L_TBenchRecord295.Add(Default(TBenchRecord295));
  L_TBenchRecord296 := TCollections.CreateList<TBenchRecord296>;
  L_TBenchRecord296.Add(Default(TBenchRecord296));
  L_TBenchRecord297 := TCollections.CreateList<TBenchRecord297>;
  L_TBenchRecord297.Add(Default(TBenchRecord297));
  L_TBenchRecord298 := TCollections.CreateList<TBenchRecord298>;
  L_TBenchRecord298.Add(Default(TBenchRecord298));
  L_TBenchRecord299 := TCollections.CreateList<TBenchRecord299>;
  L_TBenchRecord299.Add(Default(TBenchRecord299));
  L_TBenchRecord300 := TCollections.CreateList<TBenchRecord300>;
  L_TBenchRecord300.Add(Default(TBenchRecord300));
  L_TBenchRecord301 := TCollections.CreateList<TBenchRecord301>;
  L_TBenchRecord301.Add(Default(TBenchRecord301));
  L_TBenchRecord302 := TCollections.CreateList<TBenchRecord302>;
  L_TBenchRecord302.Add(Default(TBenchRecord302));
  L_TBenchRecord303 := TCollections.CreateList<TBenchRecord303>;
  L_TBenchRecord303.Add(Default(TBenchRecord303));
  L_TBenchRecord304 := TCollections.CreateList<TBenchRecord304>;
  L_TBenchRecord304.Add(Default(TBenchRecord304));
  L_TBenchRecord305 := TCollections.CreateList<TBenchRecord305>;
  L_TBenchRecord305.Add(Default(TBenchRecord305));
  L_TBenchRecord306 := TCollections.CreateList<TBenchRecord306>;
  L_TBenchRecord306.Add(Default(TBenchRecord306));
  L_TBenchRecord307 := TCollections.CreateList<TBenchRecord307>;
  L_TBenchRecord307.Add(Default(TBenchRecord307));
  L_TBenchRecord308 := TCollections.CreateList<TBenchRecord308>;
  L_TBenchRecord308.Add(Default(TBenchRecord308));
  L_TBenchRecord309 := TCollections.CreateList<TBenchRecord309>;
  L_TBenchRecord309.Add(Default(TBenchRecord309));
  L_TBenchRecord310 := TCollections.CreateList<TBenchRecord310>;
  L_TBenchRecord310.Add(Default(TBenchRecord310));
  L_TBenchRecord311 := TCollections.CreateList<TBenchRecord311>;
  L_TBenchRecord311.Add(Default(TBenchRecord311));
  L_TBenchRecord312 := TCollections.CreateList<TBenchRecord312>;
  L_TBenchRecord312.Add(Default(TBenchRecord312));
  L_TBenchRecord313 := TCollections.CreateList<TBenchRecord313>;
  L_TBenchRecord313.Add(Default(TBenchRecord313));
  L_TBenchRecord314 := TCollections.CreateList<TBenchRecord314>;
  L_TBenchRecord314.Add(Default(TBenchRecord314));
  L_TBenchRecord315 := TCollections.CreateList<TBenchRecord315>;
  L_TBenchRecord315.Add(Default(TBenchRecord315));
  L_TBenchRecord316 := TCollections.CreateList<TBenchRecord316>;
  L_TBenchRecord316.Add(Default(TBenchRecord316));
  L_TBenchRecord317 := TCollections.CreateList<TBenchRecord317>;
  L_TBenchRecord317.Add(Default(TBenchRecord317));
  L_TBenchRecord318 := TCollections.CreateList<TBenchRecord318>;
  L_TBenchRecord318.Add(Default(TBenchRecord318));
  L_TBenchRecord319 := TCollections.CreateList<TBenchRecord319>;
  L_TBenchRecord319.Add(Default(TBenchRecord319));
  L_TBenchRecord320 := TCollections.CreateList<TBenchRecord320>;
  L_TBenchRecord320.Add(Default(TBenchRecord320));
  L_TBenchRecord321 := TCollections.CreateList<TBenchRecord321>;
  L_TBenchRecord321.Add(Default(TBenchRecord321));
  L_TBenchRecord322 := TCollections.CreateList<TBenchRecord322>;
  L_TBenchRecord322.Add(Default(TBenchRecord322));
  L_TBenchRecord323 := TCollections.CreateList<TBenchRecord323>;
  L_TBenchRecord323.Add(Default(TBenchRecord323));
  L_TBenchRecord324 := TCollections.CreateList<TBenchRecord324>;
  L_TBenchRecord324.Add(Default(TBenchRecord324));
  L_TBenchRecord325 := TCollections.CreateList<TBenchRecord325>;
  L_TBenchRecord325.Add(Default(TBenchRecord325));
  L_TBenchRecord326 := TCollections.CreateList<TBenchRecord326>;
  L_TBenchRecord326.Add(Default(TBenchRecord326));
  L_TBenchRecord327 := TCollections.CreateList<TBenchRecord327>;
  L_TBenchRecord327.Add(Default(TBenchRecord327));
  L_TBenchRecord328 := TCollections.CreateList<TBenchRecord328>;
  L_TBenchRecord328.Add(Default(TBenchRecord328));
  L_TBenchRecord329 := TCollections.CreateList<TBenchRecord329>;
  L_TBenchRecord329.Add(Default(TBenchRecord329));
  L_TBenchRecord330 := TCollections.CreateList<TBenchRecord330>;
  L_TBenchRecord330.Add(Default(TBenchRecord330));
  L_TBenchRecord331 := TCollections.CreateList<TBenchRecord331>;
  L_TBenchRecord331.Add(Default(TBenchRecord331));
  L_TBenchRecord332 := TCollections.CreateList<TBenchRecord332>;
  L_TBenchRecord332.Add(Default(TBenchRecord332));
  L_TBenchRecord333 := TCollections.CreateList<TBenchRecord333>;
  L_TBenchRecord333.Add(Default(TBenchRecord333));
  L_TBenchRecord334 := TCollections.CreateList<TBenchRecord334>;
  L_TBenchRecord334.Add(Default(TBenchRecord334));
  L_TBenchRecord335 := TCollections.CreateList<TBenchRecord335>;
  L_TBenchRecord335.Add(Default(TBenchRecord335));
  L_TBenchRecord336 := TCollections.CreateList<TBenchRecord336>;
  L_TBenchRecord336.Add(Default(TBenchRecord336));
  L_TBenchRecord337 := TCollections.CreateList<TBenchRecord337>;
  L_TBenchRecord337.Add(Default(TBenchRecord337));
  L_TBenchRecord338 := TCollections.CreateList<TBenchRecord338>;
  L_TBenchRecord338.Add(Default(TBenchRecord338));
  L_TBenchRecord339 := TCollections.CreateList<TBenchRecord339>;
  L_TBenchRecord339.Add(Default(TBenchRecord339));
  L_TBenchRecord340 := TCollections.CreateList<TBenchRecord340>;
  L_TBenchRecord340.Add(Default(TBenchRecord340));
  L_TBenchRecord341 := TCollections.CreateList<TBenchRecord341>;
  L_TBenchRecord341.Add(Default(TBenchRecord341));
  L_TBenchRecord342 := TCollections.CreateList<TBenchRecord342>;
  L_TBenchRecord342.Add(Default(TBenchRecord342));
  L_TBenchRecord343 := TCollections.CreateList<TBenchRecord343>;
  L_TBenchRecord343.Add(Default(TBenchRecord343));
  L_TBenchRecord344 := TCollections.CreateList<TBenchRecord344>;
  L_TBenchRecord344.Add(Default(TBenchRecord344));
  L_TBenchRecord345 := TCollections.CreateList<TBenchRecord345>;
  L_TBenchRecord345.Add(Default(TBenchRecord345));
  L_TBenchRecord346 := TCollections.CreateList<TBenchRecord346>;
  L_TBenchRecord346.Add(Default(TBenchRecord346));
  L_TBenchRecord347 := TCollections.CreateList<TBenchRecord347>;
  L_TBenchRecord347.Add(Default(TBenchRecord347));
  L_TBenchRecord348 := TCollections.CreateList<TBenchRecord348>;
  L_TBenchRecord348.Add(Default(TBenchRecord348));
  L_TBenchRecord349 := TCollections.CreateList<TBenchRecord349>;
  L_TBenchRecord349.Add(Default(TBenchRecord349));
  L_TBenchRecord350 := TCollections.CreateList<TBenchRecord350>;
  L_TBenchRecord350.Add(Default(TBenchRecord350));
  L_TBenchRecord351 := TCollections.CreateList<TBenchRecord351>;
  L_TBenchRecord351.Add(Default(TBenchRecord351));
  L_TBenchRecord352 := TCollections.CreateList<TBenchRecord352>;
  L_TBenchRecord352.Add(Default(TBenchRecord352));
  L_TBenchRecord353 := TCollections.CreateList<TBenchRecord353>;
  L_TBenchRecord353.Add(Default(TBenchRecord353));
  L_TBenchRecord354 := TCollections.CreateList<TBenchRecord354>;
  L_TBenchRecord354.Add(Default(TBenchRecord354));
  L_TBenchRecord355 := TCollections.CreateList<TBenchRecord355>;
  L_TBenchRecord355.Add(Default(TBenchRecord355));
  L_TBenchRecord356 := TCollections.CreateList<TBenchRecord356>;
  L_TBenchRecord356.Add(Default(TBenchRecord356));
  L_TBenchRecord357 := TCollections.CreateList<TBenchRecord357>;
  L_TBenchRecord357.Add(Default(TBenchRecord357));
  L_TBenchRecord358 := TCollections.CreateList<TBenchRecord358>;
  L_TBenchRecord358.Add(Default(TBenchRecord358));
  L_TBenchRecord359 := TCollections.CreateList<TBenchRecord359>;
  L_TBenchRecord359.Add(Default(TBenchRecord359));
  L_TBenchRecord360 := TCollections.CreateList<TBenchRecord360>;
  L_TBenchRecord360.Add(Default(TBenchRecord360));
  L_TBenchRecord361 := TCollections.CreateList<TBenchRecord361>;
  L_TBenchRecord361.Add(Default(TBenchRecord361));
  L_TBenchRecord362 := TCollections.CreateList<TBenchRecord362>;
  L_TBenchRecord362.Add(Default(TBenchRecord362));
  L_TBenchRecord363 := TCollections.CreateList<TBenchRecord363>;
  L_TBenchRecord363.Add(Default(TBenchRecord363));
  L_TBenchRecord364 := TCollections.CreateList<TBenchRecord364>;
  L_TBenchRecord364.Add(Default(TBenchRecord364));
  L_TBenchRecord365 := TCollections.CreateList<TBenchRecord365>;
  L_TBenchRecord365.Add(Default(TBenchRecord365));
  L_TBenchRecord366 := TCollections.CreateList<TBenchRecord366>;
  L_TBenchRecord366.Add(Default(TBenchRecord366));
  L_TBenchRecord367 := TCollections.CreateList<TBenchRecord367>;
  L_TBenchRecord367.Add(Default(TBenchRecord367));
  L_TBenchRecord368 := TCollections.CreateList<TBenchRecord368>;
  L_TBenchRecord368.Add(Default(TBenchRecord368));
  L_TBenchRecord369 := TCollections.CreateList<TBenchRecord369>;
  L_TBenchRecord369.Add(Default(TBenchRecord369));
  L_TBenchRecord370 := TCollections.CreateList<TBenchRecord370>;
  L_TBenchRecord370.Add(Default(TBenchRecord370));
  L_TBenchRecord371 := TCollections.CreateList<TBenchRecord371>;
  L_TBenchRecord371.Add(Default(TBenchRecord371));
  L_TBenchRecord372 := TCollections.CreateList<TBenchRecord372>;
  L_TBenchRecord372.Add(Default(TBenchRecord372));
  L_TBenchRecord373 := TCollections.CreateList<TBenchRecord373>;
  L_TBenchRecord373.Add(Default(TBenchRecord373));
  L_TBenchRecord374 := TCollections.CreateList<TBenchRecord374>;
  L_TBenchRecord374.Add(Default(TBenchRecord374));
  L_TBenchRecord375 := TCollections.CreateList<TBenchRecord375>;
  L_TBenchRecord375.Add(Default(TBenchRecord375));
  L_TBenchRecord376 := TCollections.CreateList<TBenchRecord376>;
  L_TBenchRecord376.Add(Default(TBenchRecord376));
  L_TBenchRecord377 := TCollections.CreateList<TBenchRecord377>;
  L_TBenchRecord377.Add(Default(TBenchRecord377));
  L_TBenchRecord378 := TCollections.CreateList<TBenchRecord378>;
  L_TBenchRecord378.Add(Default(TBenchRecord378));
  L_TBenchRecord379 := TCollections.CreateList<TBenchRecord379>;
  L_TBenchRecord379.Add(Default(TBenchRecord379));
  L_TBenchRecord380 := TCollections.CreateList<TBenchRecord380>;
  L_TBenchRecord380.Add(Default(TBenchRecord380));
  L_TBenchRecord381 := TCollections.CreateList<TBenchRecord381>;
  L_TBenchRecord381.Add(Default(TBenchRecord381));
  L_TBenchRecord382 := TCollections.CreateList<TBenchRecord382>;
  L_TBenchRecord382.Add(Default(TBenchRecord382));
  L_TBenchRecord383 := TCollections.CreateList<TBenchRecord383>;
  L_TBenchRecord383.Add(Default(TBenchRecord383));
  L_TBenchRecord384 := TCollections.CreateList<TBenchRecord384>;
  L_TBenchRecord384.Add(Default(TBenchRecord384));
  L_TBenchRecord385 := TCollections.CreateList<TBenchRecord385>;
  L_TBenchRecord385.Add(Default(TBenchRecord385));
  L_TBenchRecord386 := TCollections.CreateList<TBenchRecord386>;
  L_TBenchRecord386.Add(Default(TBenchRecord386));
  L_TBenchRecord387 := TCollections.CreateList<TBenchRecord387>;
  L_TBenchRecord387.Add(Default(TBenchRecord387));
  L_TBenchRecord388 := TCollections.CreateList<TBenchRecord388>;
  L_TBenchRecord388.Add(Default(TBenchRecord388));
  L_TBenchRecord389 := TCollections.CreateList<TBenchRecord389>;
  L_TBenchRecord389.Add(Default(TBenchRecord389));
  L_TBenchRecord390 := TCollections.CreateList<TBenchRecord390>;
  L_TBenchRecord390.Add(Default(TBenchRecord390));
  L_TBenchRecord391 := TCollections.CreateList<TBenchRecord391>;
  L_TBenchRecord391.Add(Default(TBenchRecord391));
  L_TBenchRecord392 := TCollections.CreateList<TBenchRecord392>;
  L_TBenchRecord392.Add(Default(TBenchRecord392));
  L_TBenchRecord393 := TCollections.CreateList<TBenchRecord393>;
  L_TBenchRecord393.Add(Default(TBenchRecord393));
  L_TBenchRecord394 := TCollections.CreateList<TBenchRecord394>;
  L_TBenchRecord394.Add(Default(TBenchRecord394));
  L_TBenchRecord395 := TCollections.CreateList<TBenchRecord395>;
  L_TBenchRecord395.Add(Default(TBenchRecord395));
  L_TBenchRecord396 := TCollections.CreateList<TBenchRecord396>;
  L_TBenchRecord396.Add(Default(TBenchRecord396));
  L_TBenchRecord397 := TCollections.CreateList<TBenchRecord397>;
  L_TBenchRecord397.Add(Default(TBenchRecord397));
  L_TBenchRecord398 := TCollections.CreateList<TBenchRecord398>;
  L_TBenchRecord398.Add(Default(TBenchRecord398));
  L_TBenchRecord399 := TCollections.CreateList<TBenchRecord399>;
  L_TBenchRecord399.Add(Default(TBenchRecord399));
  L_TBenchRecord400 := TCollections.CreateList<TBenchRecord400>;
  L_TBenchRecord400.Add(Default(TBenchRecord400));
  L_TBenchRecord401 := TCollections.CreateList<TBenchRecord401>;
  L_TBenchRecord401.Add(Default(TBenchRecord401));
  L_TBenchRecord402 := TCollections.CreateList<TBenchRecord402>;
  L_TBenchRecord402.Add(Default(TBenchRecord402));
  L_TBenchRecord403 := TCollections.CreateList<TBenchRecord403>;
  L_TBenchRecord403.Add(Default(TBenchRecord403));
  L_TBenchRecord404 := TCollections.CreateList<TBenchRecord404>;
  L_TBenchRecord404.Add(Default(TBenchRecord404));
  L_TBenchRecord405 := TCollections.CreateList<TBenchRecord405>;
  L_TBenchRecord405.Add(Default(TBenchRecord405));
  L_TBenchRecord406 := TCollections.CreateList<TBenchRecord406>;
  L_TBenchRecord406.Add(Default(TBenchRecord406));
  L_TBenchRecord407 := TCollections.CreateList<TBenchRecord407>;
  L_TBenchRecord407.Add(Default(TBenchRecord407));
  L_TBenchRecord408 := TCollections.CreateList<TBenchRecord408>;
  L_TBenchRecord408.Add(Default(TBenchRecord408));
  L_TBenchRecord409 := TCollections.CreateList<TBenchRecord409>;
  L_TBenchRecord409.Add(Default(TBenchRecord409));
  L_TBenchRecord410 := TCollections.CreateList<TBenchRecord410>;
  L_TBenchRecord410.Add(Default(TBenchRecord410));
  L_TBenchRecord411 := TCollections.CreateList<TBenchRecord411>;
  L_TBenchRecord411.Add(Default(TBenchRecord411));
  L_TBenchRecord412 := TCollections.CreateList<TBenchRecord412>;
  L_TBenchRecord412.Add(Default(TBenchRecord412));
  L_TBenchRecord413 := TCollections.CreateList<TBenchRecord413>;
  L_TBenchRecord413.Add(Default(TBenchRecord413));
  L_TBenchRecord414 := TCollections.CreateList<TBenchRecord414>;
  L_TBenchRecord414.Add(Default(TBenchRecord414));
  L_TBenchRecord415 := TCollections.CreateList<TBenchRecord415>;
  L_TBenchRecord415.Add(Default(TBenchRecord415));
  L_TBenchRecord416 := TCollections.CreateList<TBenchRecord416>;
  L_TBenchRecord416.Add(Default(TBenchRecord416));
  L_TBenchRecord417 := TCollections.CreateList<TBenchRecord417>;
  L_TBenchRecord417.Add(Default(TBenchRecord417));
  L_TBenchRecord418 := TCollections.CreateList<TBenchRecord418>;
  L_TBenchRecord418.Add(Default(TBenchRecord418));
  L_TBenchRecord419 := TCollections.CreateList<TBenchRecord419>;
  L_TBenchRecord419.Add(Default(TBenchRecord419));
  L_TBenchRecord420 := TCollections.CreateList<TBenchRecord420>;
  L_TBenchRecord420.Add(Default(TBenchRecord420));
  L_TBenchRecord421 := TCollections.CreateList<TBenchRecord421>;
  L_TBenchRecord421.Add(Default(TBenchRecord421));
  L_TBenchRecord422 := TCollections.CreateList<TBenchRecord422>;
  L_TBenchRecord422.Add(Default(TBenchRecord422));
  L_TBenchRecord423 := TCollections.CreateList<TBenchRecord423>;
  L_TBenchRecord423.Add(Default(TBenchRecord423));
  L_TBenchRecord424 := TCollections.CreateList<TBenchRecord424>;
  L_TBenchRecord424.Add(Default(TBenchRecord424));
  L_TBenchRecord425 := TCollections.CreateList<TBenchRecord425>;
  L_TBenchRecord425.Add(Default(TBenchRecord425));
  L_TBenchRecord426 := TCollections.CreateList<TBenchRecord426>;
  L_TBenchRecord426.Add(Default(TBenchRecord426));
  L_TBenchRecord427 := TCollections.CreateList<TBenchRecord427>;
  L_TBenchRecord427.Add(Default(TBenchRecord427));
  L_TBenchRecord428 := TCollections.CreateList<TBenchRecord428>;
  L_TBenchRecord428.Add(Default(TBenchRecord428));
  L_TBenchRecord429 := TCollections.CreateList<TBenchRecord429>;
  L_TBenchRecord429.Add(Default(TBenchRecord429));
  L_TBenchRecord430 := TCollections.CreateList<TBenchRecord430>;
  L_TBenchRecord430.Add(Default(TBenchRecord430));
  L_TBenchRecord431 := TCollections.CreateList<TBenchRecord431>;
  L_TBenchRecord431.Add(Default(TBenchRecord431));
  L_TBenchRecord432 := TCollections.CreateList<TBenchRecord432>;
  L_TBenchRecord432.Add(Default(TBenchRecord432));
  L_TBenchRecord433 := TCollections.CreateList<TBenchRecord433>;
  L_TBenchRecord433.Add(Default(TBenchRecord433));
  L_TBenchRecord434 := TCollections.CreateList<TBenchRecord434>;
  L_TBenchRecord434.Add(Default(TBenchRecord434));
  L_TBenchRecord435 := TCollections.CreateList<TBenchRecord435>;
  L_TBenchRecord435.Add(Default(TBenchRecord435));
  L_TBenchRecord436 := TCollections.CreateList<TBenchRecord436>;
  L_TBenchRecord436.Add(Default(TBenchRecord436));
  L_TBenchRecord437 := TCollections.CreateList<TBenchRecord437>;
  L_TBenchRecord437.Add(Default(TBenchRecord437));
  L_TBenchRecord438 := TCollections.CreateList<TBenchRecord438>;
  L_TBenchRecord438.Add(Default(TBenchRecord438));
  L_TBenchRecord439 := TCollections.CreateList<TBenchRecord439>;
  L_TBenchRecord439.Add(Default(TBenchRecord439));
  L_TBenchRecord440 := TCollections.CreateList<TBenchRecord440>;
  L_TBenchRecord440.Add(Default(TBenchRecord440));
  L_TBenchRecord441 := TCollections.CreateList<TBenchRecord441>;
  L_TBenchRecord441.Add(Default(TBenchRecord441));
  L_TBenchRecord442 := TCollections.CreateList<TBenchRecord442>;
  L_TBenchRecord442.Add(Default(TBenchRecord442));
  L_TBenchRecord443 := TCollections.CreateList<TBenchRecord443>;
  L_TBenchRecord443.Add(Default(TBenchRecord443));
  L_TBenchRecord444 := TCollections.CreateList<TBenchRecord444>;
  L_TBenchRecord444.Add(Default(TBenchRecord444));
  L_TBenchRecord445 := TCollections.CreateList<TBenchRecord445>;
  L_TBenchRecord445.Add(Default(TBenchRecord445));
  L_TBenchRecord446 := TCollections.CreateList<TBenchRecord446>;
  L_TBenchRecord446.Add(Default(TBenchRecord446));
  L_TBenchRecord447 := TCollections.CreateList<TBenchRecord447>;
  L_TBenchRecord447.Add(Default(TBenchRecord447));
  L_TBenchRecord448 := TCollections.CreateList<TBenchRecord448>;
  L_TBenchRecord448.Add(Default(TBenchRecord448));
  L_TBenchRecord449 := TCollections.CreateList<TBenchRecord449>;
  L_TBenchRecord449.Add(Default(TBenchRecord449));
  L_TBenchRecord450 := TCollections.CreateList<TBenchRecord450>;
  L_TBenchRecord450.Add(Default(TBenchRecord450));
  L_TBenchRecord451 := TCollections.CreateList<TBenchRecord451>;
  L_TBenchRecord451.Add(Default(TBenchRecord451));
  L_TBenchRecord452 := TCollections.CreateList<TBenchRecord452>;
  L_TBenchRecord452.Add(Default(TBenchRecord452));
  L_TBenchRecord453 := TCollections.CreateList<TBenchRecord453>;
  L_TBenchRecord453.Add(Default(TBenchRecord453));
  L_TBenchRecord454 := TCollections.CreateList<TBenchRecord454>;
  L_TBenchRecord454.Add(Default(TBenchRecord454));
  L_TBenchRecord455 := TCollections.CreateList<TBenchRecord455>;
  L_TBenchRecord455.Add(Default(TBenchRecord455));
  L_TBenchRecord456 := TCollections.CreateList<TBenchRecord456>;
  L_TBenchRecord456.Add(Default(TBenchRecord456));
  L_TBenchRecord457 := TCollections.CreateList<TBenchRecord457>;
  L_TBenchRecord457.Add(Default(TBenchRecord457));
  L_TBenchRecord458 := TCollections.CreateList<TBenchRecord458>;
  L_TBenchRecord458.Add(Default(TBenchRecord458));
  L_TBenchRecord459 := TCollections.CreateList<TBenchRecord459>;
  L_TBenchRecord459.Add(Default(TBenchRecord459));
  L_TBenchRecord460 := TCollections.CreateList<TBenchRecord460>;
  L_TBenchRecord460.Add(Default(TBenchRecord460));
  L_TBenchRecord461 := TCollections.CreateList<TBenchRecord461>;
  L_TBenchRecord461.Add(Default(TBenchRecord461));
  L_TBenchRecord462 := TCollections.CreateList<TBenchRecord462>;
  L_TBenchRecord462.Add(Default(TBenchRecord462));
  L_TBenchRecord463 := TCollections.CreateList<TBenchRecord463>;
  L_TBenchRecord463.Add(Default(TBenchRecord463));
  L_TBenchRecord464 := TCollections.CreateList<TBenchRecord464>;
  L_TBenchRecord464.Add(Default(TBenchRecord464));
  L_TBenchRecord465 := TCollections.CreateList<TBenchRecord465>;
  L_TBenchRecord465.Add(Default(TBenchRecord465));
  L_TBenchRecord466 := TCollections.CreateList<TBenchRecord466>;
  L_TBenchRecord466.Add(Default(TBenchRecord466));
  L_TBenchRecord467 := TCollections.CreateList<TBenchRecord467>;
  L_TBenchRecord467.Add(Default(TBenchRecord467));
  L_TBenchRecord468 := TCollections.CreateList<TBenchRecord468>;
  L_TBenchRecord468.Add(Default(TBenchRecord468));
  L_TBenchRecord469 := TCollections.CreateList<TBenchRecord469>;
  L_TBenchRecord469.Add(Default(TBenchRecord469));
  L_TBenchRecord470 := TCollections.CreateList<TBenchRecord470>;
  L_TBenchRecord470.Add(Default(TBenchRecord470));
  L_TBenchRecord471 := TCollections.CreateList<TBenchRecord471>;
  L_TBenchRecord471.Add(Default(TBenchRecord471));
  L_TBenchRecord472 := TCollections.CreateList<TBenchRecord472>;
  L_TBenchRecord472.Add(Default(TBenchRecord472));
  L_TBenchRecord473 := TCollections.CreateList<TBenchRecord473>;
  L_TBenchRecord473.Add(Default(TBenchRecord473));
  L_TBenchRecord474 := TCollections.CreateList<TBenchRecord474>;
  L_TBenchRecord474.Add(Default(TBenchRecord474));
  L_TBenchRecord475 := TCollections.CreateList<TBenchRecord475>;
  L_TBenchRecord475.Add(Default(TBenchRecord475));
  L_TBenchRecord476 := TCollections.CreateList<TBenchRecord476>;
  L_TBenchRecord476.Add(Default(TBenchRecord476));
  L_TBenchRecord477 := TCollections.CreateList<TBenchRecord477>;
  L_TBenchRecord477.Add(Default(TBenchRecord477));
  L_TBenchRecord478 := TCollections.CreateList<TBenchRecord478>;
  L_TBenchRecord478.Add(Default(TBenchRecord478));
  L_TBenchRecord479 := TCollections.CreateList<TBenchRecord479>;
  L_TBenchRecord479.Add(Default(TBenchRecord479));
  L_TBenchRecord480 := TCollections.CreateList<TBenchRecord480>;
  L_TBenchRecord480.Add(Default(TBenchRecord480));
  L_TBenchRecord481 := TCollections.CreateList<TBenchRecord481>;
  L_TBenchRecord481.Add(Default(TBenchRecord481));
  L_TBenchRecord482 := TCollections.CreateList<TBenchRecord482>;
  L_TBenchRecord482.Add(Default(TBenchRecord482));
  L_TBenchRecord483 := TCollections.CreateList<TBenchRecord483>;
  L_TBenchRecord483.Add(Default(TBenchRecord483));
  L_TBenchRecord484 := TCollections.CreateList<TBenchRecord484>;
  L_TBenchRecord484.Add(Default(TBenchRecord484));
  L_TBenchRecord485 := TCollections.CreateList<TBenchRecord485>;
  L_TBenchRecord485.Add(Default(TBenchRecord485));
  L_TBenchRecord486 := TCollections.CreateList<TBenchRecord486>;
  L_TBenchRecord486.Add(Default(TBenchRecord486));
  L_TBenchRecord487 := TCollections.CreateList<TBenchRecord487>;
  L_TBenchRecord487.Add(Default(TBenchRecord487));
  L_TBenchRecord488 := TCollections.CreateList<TBenchRecord488>;
  L_TBenchRecord488.Add(Default(TBenchRecord488));
  L_TBenchRecord489 := TCollections.CreateList<TBenchRecord489>;
  L_TBenchRecord489.Add(Default(TBenchRecord489));
  L_TBenchRecord490 := TCollections.CreateList<TBenchRecord490>;
  L_TBenchRecord490.Add(Default(TBenchRecord490));
  L_TBenchRecord491 := TCollections.CreateList<TBenchRecord491>;
  L_TBenchRecord491.Add(Default(TBenchRecord491));
  L_TBenchRecord492 := TCollections.CreateList<TBenchRecord492>;
  L_TBenchRecord492.Add(Default(TBenchRecord492));
  L_TBenchRecord493 := TCollections.CreateList<TBenchRecord493>;
  L_TBenchRecord493.Add(Default(TBenchRecord493));
  L_TBenchRecord494 := TCollections.CreateList<TBenchRecord494>;
  L_TBenchRecord494.Add(Default(TBenchRecord494));
  L_TBenchRecord495 := TCollections.CreateList<TBenchRecord495>;
  L_TBenchRecord495.Add(Default(TBenchRecord495));
  L_TBenchRecord496 := TCollections.CreateList<TBenchRecord496>;
  L_TBenchRecord496.Add(Default(TBenchRecord496));
  L_TBenchRecord497 := TCollections.CreateList<TBenchRecord497>;
  L_TBenchRecord497.Add(Default(TBenchRecord497));
  L_TBenchRecord498 := TCollections.CreateList<TBenchRecord498>;
  L_TBenchRecord498.Add(Default(TBenchRecord498));
  L_TBenchRecord499 := TCollections.CreateList<TBenchRecord499>;
  L_TBenchRecord499.Add(Default(TBenchRecord499));
  L_TBenchRecord500 := TCollections.CreateList<TBenchRecord500>;
  L_TBenchRecord500.Add(Default(TBenchRecord500));
end;

class procedure TBenchmarkRegistry.CreateAllDictionaries;
var
  DS_TBenchRecord001: TDictionary<string, TBenchRecord001>;
  DI_TBenchRecord001: TDictionary<Integer, TBenchRecord001>;
  DG_TBenchRecord001: TDictionary<TGUID, TBenchRecord001>;
  DS_TBenchRecord002: TDictionary<string, TBenchRecord002>;
  DI_TBenchRecord002: TDictionary<Integer, TBenchRecord002>;
  DG_TBenchRecord002: TDictionary<TGUID, TBenchRecord002>;
  DS_TBenchRecord003: TDictionary<string, TBenchRecord003>;
  DI_TBenchRecord003: TDictionary<Integer, TBenchRecord003>;
  DG_TBenchRecord003: TDictionary<TGUID, TBenchRecord003>;
  DS_TBenchRecord004: TDictionary<string, TBenchRecord004>;
  DI_TBenchRecord004: TDictionary<Integer, TBenchRecord004>;
  DG_TBenchRecord004: TDictionary<TGUID, TBenchRecord004>;
  DS_TBenchRecord005: TDictionary<string, TBenchRecord005>;
  DI_TBenchRecord005: TDictionary<Integer, TBenchRecord005>;
  DG_TBenchRecord005: TDictionary<TGUID, TBenchRecord005>;
  DS_TBenchRecord006: TDictionary<string, TBenchRecord006>;
  DI_TBenchRecord006: TDictionary<Integer, TBenchRecord006>;
  DG_TBenchRecord006: TDictionary<TGUID, TBenchRecord006>;
  DS_TBenchRecord007: TDictionary<string, TBenchRecord007>;
  DI_TBenchRecord007: TDictionary<Integer, TBenchRecord007>;
  DG_TBenchRecord007: TDictionary<TGUID, TBenchRecord007>;
  DS_TBenchRecord008: TDictionary<string, TBenchRecord008>;
  DI_TBenchRecord008: TDictionary<Integer, TBenchRecord008>;
  DG_TBenchRecord008: TDictionary<TGUID, TBenchRecord008>;
  DS_TBenchRecord009: TDictionary<string, TBenchRecord009>;
  DI_TBenchRecord009: TDictionary<Integer, TBenchRecord009>;
  DG_TBenchRecord009: TDictionary<TGUID, TBenchRecord009>;
  DS_TBenchRecord010: TDictionary<string, TBenchRecord010>;
  DI_TBenchRecord010: TDictionary<Integer, TBenchRecord010>;
  DG_TBenchRecord010: TDictionary<TGUID, TBenchRecord010>;
  DS_TBenchRecord011: TDictionary<string, TBenchRecord011>;
  DI_TBenchRecord011: TDictionary<Integer, TBenchRecord011>;
  DG_TBenchRecord011: TDictionary<TGUID, TBenchRecord011>;
  DS_TBenchRecord012: TDictionary<string, TBenchRecord012>;
  DI_TBenchRecord012: TDictionary<Integer, TBenchRecord012>;
  DG_TBenchRecord012: TDictionary<TGUID, TBenchRecord012>;
  DS_TBenchRecord013: TDictionary<string, TBenchRecord013>;
  DI_TBenchRecord013: TDictionary<Integer, TBenchRecord013>;
  DG_TBenchRecord013: TDictionary<TGUID, TBenchRecord013>;
  DS_TBenchRecord014: TDictionary<string, TBenchRecord014>;
  DI_TBenchRecord014: TDictionary<Integer, TBenchRecord014>;
  DG_TBenchRecord014: TDictionary<TGUID, TBenchRecord014>;
  DS_TBenchRecord015: TDictionary<string, TBenchRecord015>;
  DI_TBenchRecord015: TDictionary<Integer, TBenchRecord015>;
  DG_TBenchRecord015: TDictionary<TGUID, TBenchRecord015>;
  DS_TBenchRecord016: TDictionary<string, TBenchRecord016>;
  DI_TBenchRecord016: TDictionary<Integer, TBenchRecord016>;
  DG_TBenchRecord016: TDictionary<TGUID, TBenchRecord016>;
  DS_TBenchRecord017: TDictionary<string, TBenchRecord017>;
  DI_TBenchRecord017: TDictionary<Integer, TBenchRecord017>;
  DG_TBenchRecord017: TDictionary<TGUID, TBenchRecord017>;
  DS_TBenchRecord018: TDictionary<string, TBenchRecord018>;
  DI_TBenchRecord018: TDictionary<Integer, TBenchRecord018>;
  DG_TBenchRecord018: TDictionary<TGUID, TBenchRecord018>;
  DS_TBenchRecord019: TDictionary<string, TBenchRecord019>;
  DI_TBenchRecord019: TDictionary<Integer, TBenchRecord019>;
  DG_TBenchRecord019: TDictionary<TGUID, TBenchRecord019>;
  DS_TBenchRecord020: TDictionary<string, TBenchRecord020>;
  DI_TBenchRecord020: TDictionary<Integer, TBenchRecord020>;
  DG_TBenchRecord020: TDictionary<TGUID, TBenchRecord020>;
  DS_TBenchRecord021: TDictionary<string, TBenchRecord021>;
  DI_TBenchRecord021: TDictionary<Integer, TBenchRecord021>;
  DG_TBenchRecord021: TDictionary<TGUID, TBenchRecord021>;
  DS_TBenchRecord022: TDictionary<string, TBenchRecord022>;
  DI_TBenchRecord022: TDictionary<Integer, TBenchRecord022>;
  DG_TBenchRecord022: TDictionary<TGUID, TBenchRecord022>;
  DS_TBenchRecord023: TDictionary<string, TBenchRecord023>;
  DI_TBenchRecord023: TDictionary<Integer, TBenchRecord023>;
  DG_TBenchRecord023: TDictionary<TGUID, TBenchRecord023>;
  DS_TBenchRecord024: TDictionary<string, TBenchRecord024>;
  DI_TBenchRecord024: TDictionary<Integer, TBenchRecord024>;
  DG_TBenchRecord024: TDictionary<TGUID, TBenchRecord024>;
  DS_TBenchRecord025: TDictionary<string, TBenchRecord025>;
  DI_TBenchRecord025: TDictionary<Integer, TBenchRecord025>;
  DG_TBenchRecord025: TDictionary<TGUID, TBenchRecord025>;
  DS_TBenchRecord026: TDictionary<string, TBenchRecord026>;
  DI_TBenchRecord026: TDictionary<Integer, TBenchRecord026>;
  DG_TBenchRecord026: TDictionary<TGUID, TBenchRecord026>;
  DS_TBenchRecord027: TDictionary<string, TBenchRecord027>;
  DI_TBenchRecord027: TDictionary<Integer, TBenchRecord027>;
  DG_TBenchRecord027: TDictionary<TGUID, TBenchRecord027>;
  DS_TBenchRecord028: TDictionary<string, TBenchRecord028>;
  DI_TBenchRecord028: TDictionary<Integer, TBenchRecord028>;
  DG_TBenchRecord028: TDictionary<TGUID, TBenchRecord028>;
  DS_TBenchRecord029: TDictionary<string, TBenchRecord029>;
  DI_TBenchRecord029: TDictionary<Integer, TBenchRecord029>;
  DG_TBenchRecord029: TDictionary<TGUID, TBenchRecord029>;
  DS_TBenchRecord030: TDictionary<string, TBenchRecord030>;
  DI_TBenchRecord030: TDictionary<Integer, TBenchRecord030>;
  DG_TBenchRecord030: TDictionary<TGUID, TBenchRecord030>;
  DS_TBenchRecord031: TDictionary<string, TBenchRecord031>;
  DI_TBenchRecord031: TDictionary<Integer, TBenchRecord031>;
  DG_TBenchRecord031: TDictionary<TGUID, TBenchRecord031>;
  DS_TBenchRecord032: TDictionary<string, TBenchRecord032>;
  DI_TBenchRecord032: TDictionary<Integer, TBenchRecord032>;
  DG_TBenchRecord032: TDictionary<TGUID, TBenchRecord032>;
  DS_TBenchRecord033: TDictionary<string, TBenchRecord033>;
  DI_TBenchRecord033: TDictionary<Integer, TBenchRecord033>;
  DG_TBenchRecord033: TDictionary<TGUID, TBenchRecord033>;
  DS_TBenchRecord034: TDictionary<string, TBenchRecord034>;
  DI_TBenchRecord034: TDictionary<Integer, TBenchRecord034>;
  DG_TBenchRecord034: TDictionary<TGUID, TBenchRecord034>;
  DS_TBenchRecord035: TDictionary<string, TBenchRecord035>;
  DI_TBenchRecord035: TDictionary<Integer, TBenchRecord035>;
  DG_TBenchRecord035: TDictionary<TGUID, TBenchRecord035>;
  DS_TBenchRecord036: TDictionary<string, TBenchRecord036>;
  DI_TBenchRecord036: TDictionary<Integer, TBenchRecord036>;
  DG_TBenchRecord036: TDictionary<TGUID, TBenchRecord036>;
  DS_TBenchRecord037: TDictionary<string, TBenchRecord037>;
  DI_TBenchRecord037: TDictionary<Integer, TBenchRecord037>;
  DG_TBenchRecord037: TDictionary<TGUID, TBenchRecord037>;
  DS_TBenchRecord038: TDictionary<string, TBenchRecord038>;
  DI_TBenchRecord038: TDictionary<Integer, TBenchRecord038>;
  DG_TBenchRecord038: TDictionary<TGUID, TBenchRecord038>;
  DS_TBenchRecord039: TDictionary<string, TBenchRecord039>;
  DI_TBenchRecord039: TDictionary<Integer, TBenchRecord039>;
  DG_TBenchRecord039: TDictionary<TGUID, TBenchRecord039>;
  DS_TBenchRecord040: TDictionary<string, TBenchRecord040>;
  DI_TBenchRecord040: TDictionary<Integer, TBenchRecord040>;
  DG_TBenchRecord040: TDictionary<TGUID, TBenchRecord040>;
  DS_TBenchRecord041: TDictionary<string, TBenchRecord041>;
  DI_TBenchRecord041: TDictionary<Integer, TBenchRecord041>;
  DG_TBenchRecord041: TDictionary<TGUID, TBenchRecord041>;
  DS_TBenchRecord042: TDictionary<string, TBenchRecord042>;
  DI_TBenchRecord042: TDictionary<Integer, TBenchRecord042>;
  DG_TBenchRecord042: TDictionary<TGUID, TBenchRecord042>;
  DS_TBenchRecord043: TDictionary<string, TBenchRecord043>;
  DI_TBenchRecord043: TDictionary<Integer, TBenchRecord043>;
  DG_TBenchRecord043: TDictionary<TGUID, TBenchRecord043>;
  DS_TBenchRecord044: TDictionary<string, TBenchRecord044>;
  DI_TBenchRecord044: TDictionary<Integer, TBenchRecord044>;
  DG_TBenchRecord044: TDictionary<TGUID, TBenchRecord044>;
  DS_TBenchRecord045: TDictionary<string, TBenchRecord045>;
  DI_TBenchRecord045: TDictionary<Integer, TBenchRecord045>;
  DG_TBenchRecord045: TDictionary<TGUID, TBenchRecord045>;
  DS_TBenchRecord046: TDictionary<string, TBenchRecord046>;
  DI_TBenchRecord046: TDictionary<Integer, TBenchRecord046>;
  DG_TBenchRecord046: TDictionary<TGUID, TBenchRecord046>;
  DS_TBenchRecord047: TDictionary<string, TBenchRecord047>;
  DI_TBenchRecord047: TDictionary<Integer, TBenchRecord047>;
  DG_TBenchRecord047: TDictionary<TGUID, TBenchRecord047>;
  DS_TBenchRecord048: TDictionary<string, TBenchRecord048>;
  DI_TBenchRecord048: TDictionary<Integer, TBenchRecord048>;
  DG_TBenchRecord048: TDictionary<TGUID, TBenchRecord048>;
  DS_TBenchRecord049: TDictionary<string, TBenchRecord049>;
  DI_TBenchRecord049: TDictionary<Integer, TBenchRecord049>;
  DG_TBenchRecord049: TDictionary<TGUID, TBenchRecord049>;
  DS_TBenchRecord050: TDictionary<string, TBenchRecord050>;
  DI_TBenchRecord050: TDictionary<Integer, TBenchRecord050>;
  DG_TBenchRecord050: TDictionary<TGUID, TBenchRecord050>;
  DS_TBenchRecord051: TDictionary<string, TBenchRecord051>;
  DI_TBenchRecord051: TDictionary<Integer, TBenchRecord051>;
  DG_TBenchRecord051: TDictionary<TGUID, TBenchRecord051>;
  DS_TBenchRecord052: TDictionary<string, TBenchRecord052>;
  DI_TBenchRecord052: TDictionary<Integer, TBenchRecord052>;
  DG_TBenchRecord052: TDictionary<TGUID, TBenchRecord052>;
  DS_TBenchRecord053: TDictionary<string, TBenchRecord053>;
  DI_TBenchRecord053: TDictionary<Integer, TBenchRecord053>;
  DG_TBenchRecord053: TDictionary<TGUID, TBenchRecord053>;
  DS_TBenchRecord054: TDictionary<string, TBenchRecord054>;
  DI_TBenchRecord054: TDictionary<Integer, TBenchRecord054>;
  DG_TBenchRecord054: TDictionary<TGUID, TBenchRecord054>;
  DS_TBenchRecord055: TDictionary<string, TBenchRecord055>;
  DI_TBenchRecord055: TDictionary<Integer, TBenchRecord055>;
  DG_TBenchRecord055: TDictionary<TGUID, TBenchRecord055>;
  DS_TBenchRecord056: TDictionary<string, TBenchRecord056>;
  DI_TBenchRecord056: TDictionary<Integer, TBenchRecord056>;
  DG_TBenchRecord056: TDictionary<TGUID, TBenchRecord056>;
  DS_TBenchRecord057: TDictionary<string, TBenchRecord057>;
  DI_TBenchRecord057: TDictionary<Integer, TBenchRecord057>;
  DG_TBenchRecord057: TDictionary<TGUID, TBenchRecord057>;
  DS_TBenchRecord058: TDictionary<string, TBenchRecord058>;
  DI_TBenchRecord058: TDictionary<Integer, TBenchRecord058>;
  DG_TBenchRecord058: TDictionary<TGUID, TBenchRecord058>;
  DS_TBenchRecord059: TDictionary<string, TBenchRecord059>;
  DI_TBenchRecord059: TDictionary<Integer, TBenchRecord059>;
  DG_TBenchRecord059: TDictionary<TGUID, TBenchRecord059>;
  DS_TBenchRecord060: TDictionary<string, TBenchRecord060>;
  DI_TBenchRecord060: TDictionary<Integer, TBenchRecord060>;
  DG_TBenchRecord060: TDictionary<TGUID, TBenchRecord060>;
  DS_TBenchRecord061: TDictionary<string, TBenchRecord061>;
  DI_TBenchRecord061: TDictionary<Integer, TBenchRecord061>;
  DG_TBenchRecord061: TDictionary<TGUID, TBenchRecord061>;
  DS_TBenchRecord062: TDictionary<string, TBenchRecord062>;
  DI_TBenchRecord062: TDictionary<Integer, TBenchRecord062>;
  DG_TBenchRecord062: TDictionary<TGUID, TBenchRecord062>;
  DS_TBenchRecord063: TDictionary<string, TBenchRecord063>;
  DI_TBenchRecord063: TDictionary<Integer, TBenchRecord063>;
  DG_TBenchRecord063: TDictionary<TGUID, TBenchRecord063>;
  DS_TBenchRecord064: TDictionary<string, TBenchRecord064>;
  DI_TBenchRecord064: TDictionary<Integer, TBenchRecord064>;
  DG_TBenchRecord064: TDictionary<TGUID, TBenchRecord064>;
  DS_TBenchRecord065: TDictionary<string, TBenchRecord065>;
  DI_TBenchRecord065: TDictionary<Integer, TBenchRecord065>;
  DG_TBenchRecord065: TDictionary<TGUID, TBenchRecord065>;
  DS_TBenchRecord066: TDictionary<string, TBenchRecord066>;
  DI_TBenchRecord066: TDictionary<Integer, TBenchRecord066>;
  DG_TBenchRecord066: TDictionary<TGUID, TBenchRecord066>;
  DS_TBenchRecord067: TDictionary<string, TBenchRecord067>;
  DI_TBenchRecord067: TDictionary<Integer, TBenchRecord067>;
  DG_TBenchRecord067: TDictionary<TGUID, TBenchRecord067>;
  DS_TBenchRecord068: TDictionary<string, TBenchRecord068>;
  DI_TBenchRecord068: TDictionary<Integer, TBenchRecord068>;
  DG_TBenchRecord068: TDictionary<TGUID, TBenchRecord068>;
  DS_TBenchRecord069: TDictionary<string, TBenchRecord069>;
  DI_TBenchRecord069: TDictionary<Integer, TBenchRecord069>;
  DG_TBenchRecord069: TDictionary<TGUID, TBenchRecord069>;
  DS_TBenchRecord070: TDictionary<string, TBenchRecord070>;
  DI_TBenchRecord070: TDictionary<Integer, TBenchRecord070>;
  DG_TBenchRecord070: TDictionary<TGUID, TBenchRecord070>;
  DS_TBenchRecord071: TDictionary<string, TBenchRecord071>;
  DI_TBenchRecord071: TDictionary<Integer, TBenchRecord071>;
  DG_TBenchRecord071: TDictionary<TGUID, TBenchRecord071>;
  DS_TBenchRecord072: TDictionary<string, TBenchRecord072>;
  DI_TBenchRecord072: TDictionary<Integer, TBenchRecord072>;
  DG_TBenchRecord072: TDictionary<TGUID, TBenchRecord072>;
  DS_TBenchRecord073: TDictionary<string, TBenchRecord073>;
  DI_TBenchRecord073: TDictionary<Integer, TBenchRecord073>;
  DG_TBenchRecord073: TDictionary<TGUID, TBenchRecord073>;
  DS_TBenchRecord074: TDictionary<string, TBenchRecord074>;
  DI_TBenchRecord074: TDictionary<Integer, TBenchRecord074>;
  DG_TBenchRecord074: TDictionary<TGUID, TBenchRecord074>;
  DS_TBenchRecord075: TDictionary<string, TBenchRecord075>;
  DI_TBenchRecord075: TDictionary<Integer, TBenchRecord075>;
  DG_TBenchRecord075: TDictionary<TGUID, TBenchRecord075>;
  DS_TBenchRecord076: TDictionary<string, TBenchRecord076>;
  DI_TBenchRecord076: TDictionary<Integer, TBenchRecord076>;
  DG_TBenchRecord076: TDictionary<TGUID, TBenchRecord076>;
  DS_TBenchRecord077: TDictionary<string, TBenchRecord077>;
  DI_TBenchRecord077: TDictionary<Integer, TBenchRecord077>;
  DG_TBenchRecord077: TDictionary<TGUID, TBenchRecord077>;
  DS_TBenchRecord078: TDictionary<string, TBenchRecord078>;
  DI_TBenchRecord078: TDictionary<Integer, TBenchRecord078>;
  DG_TBenchRecord078: TDictionary<TGUID, TBenchRecord078>;
  DS_TBenchRecord079: TDictionary<string, TBenchRecord079>;
  DI_TBenchRecord079: TDictionary<Integer, TBenchRecord079>;
  DG_TBenchRecord079: TDictionary<TGUID, TBenchRecord079>;
  DS_TBenchRecord080: TDictionary<string, TBenchRecord080>;
  DI_TBenchRecord080: TDictionary<Integer, TBenchRecord080>;
  DG_TBenchRecord080: TDictionary<TGUID, TBenchRecord080>;
  DS_TBenchRecord081: TDictionary<string, TBenchRecord081>;
  DI_TBenchRecord081: TDictionary<Integer, TBenchRecord081>;
  DG_TBenchRecord081: TDictionary<TGUID, TBenchRecord081>;
  DS_TBenchRecord082: TDictionary<string, TBenchRecord082>;
  DI_TBenchRecord082: TDictionary<Integer, TBenchRecord082>;
  DG_TBenchRecord082: TDictionary<TGUID, TBenchRecord082>;
  DS_TBenchRecord083: TDictionary<string, TBenchRecord083>;
  DI_TBenchRecord083: TDictionary<Integer, TBenchRecord083>;
  DG_TBenchRecord083: TDictionary<TGUID, TBenchRecord083>;
  DS_TBenchRecord084: TDictionary<string, TBenchRecord084>;
  DI_TBenchRecord084: TDictionary<Integer, TBenchRecord084>;
  DG_TBenchRecord084: TDictionary<TGUID, TBenchRecord084>;
  DS_TBenchRecord085: TDictionary<string, TBenchRecord085>;
  DI_TBenchRecord085: TDictionary<Integer, TBenchRecord085>;
  DG_TBenchRecord085: TDictionary<TGUID, TBenchRecord085>;
  DS_TBenchRecord086: TDictionary<string, TBenchRecord086>;
  DI_TBenchRecord086: TDictionary<Integer, TBenchRecord086>;
  DG_TBenchRecord086: TDictionary<TGUID, TBenchRecord086>;
  DS_TBenchRecord087: TDictionary<string, TBenchRecord087>;
  DI_TBenchRecord087: TDictionary<Integer, TBenchRecord087>;
  DG_TBenchRecord087: TDictionary<TGUID, TBenchRecord087>;
  DS_TBenchRecord088: TDictionary<string, TBenchRecord088>;
  DI_TBenchRecord088: TDictionary<Integer, TBenchRecord088>;
  DG_TBenchRecord088: TDictionary<TGUID, TBenchRecord088>;
  DS_TBenchRecord089: TDictionary<string, TBenchRecord089>;
  DI_TBenchRecord089: TDictionary<Integer, TBenchRecord089>;
  DG_TBenchRecord089: TDictionary<TGUID, TBenchRecord089>;
  DS_TBenchRecord090: TDictionary<string, TBenchRecord090>;
  DI_TBenchRecord090: TDictionary<Integer, TBenchRecord090>;
  DG_TBenchRecord090: TDictionary<TGUID, TBenchRecord090>;
  DS_TBenchRecord091: TDictionary<string, TBenchRecord091>;
  DI_TBenchRecord091: TDictionary<Integer, TBenchRecord091>;
  DG_TBenchRecord091: TDictionary<TGUID, TBenchRecord091>;
  DS_TBenchRecord092: TDictionary<string, TBenchRecord092>;
  DI_TBenchRecord092: TDictionary<Integer, TBenchRecord092>;
  DG_TBenchRecord092: TDictionary<TGUID, TBenchRecord092>;
  DS_TBenchRecord093: TDictionary<string, TBenchRecord093>;
  DI_TBenchRecord093: TDictionary<Integer, TBenchRecord093>;
  DG_TBenchRecord093: TDictionary<TGUID, TBenchRecord093>;
  DS_TBenchRecord094: TDictionary<string, TBenchRecord094>;
  DI_TBenchRecord094: TDictionary<Integer, TBenchRecord094>;
  DG_TBenchRecord094: TDictionary<TGUID, TBenchRecord094>;
  DS_TBenchRecord095: TDictionary<string, TBenchRecord095>;
  DI_TBenchRecord095: TDictionary<Integer, TBenchRecord095>;
  DG_TBenchRecord095: TDictionary<TGUID, TBenchRecord095>;
  DS_TBenchRecord096: TDictionary<string, TBenchRecord096>;
  DI_TBenchRecord096: TDictionary<Integer, TBenchRecord096>;
  DG_TBenchRecord096: TDictionary<TGUID, TBenchRecord096>;
  DS_TBenchRecord097: TDictionary<string, TBenchRecord097>;
  DI_TBenchRecord097: TDictionary<Integer, TBenchRecord097>;
  DG_TBenchRecord097: TDictionary<TGUID, TBenchRecord097>;
  DS_TBenchRecord098: TDictionary<string, TBenchRecord098>;
  DI_TBenchRecord098: TDictionary<Integer, TBenchRecord098>;
  DG_TBenchRecord098: TDictionary<TGUID, TBenchRecord098>;
  DS_TBenchRecord099: TDictionary<string, TBenchRecord099>;
  DI_TBenchRecord099: TDictionary<Integer, TBenchRecord099>;
  DG_TBenchRecord099: TDictionary<TGUID, TBenchRecord099>;
  DS_TBenchRecord100: TDictionary<string, TBenchRecord100>;
  DI_TBenchRecord100: TDictionary<Integer, TBenchRecord100>;
  DG_TBenchRecord100: TDictionary<TGUID, TBenchRecord100>;
  DS_TBenchRecord101: TDictionary<string, TBenchRecord101>;
  DI_TBenchRecord101: TDictionary<Integer, TBenchRecord101>;
  DG_TBenchRecord101: TDictionary<TGUID, TBenchRecord101>;
  DS_TBenchRecord102: TDictionary<string, TBenchRecord102>;
  DI_TBenchRecord102: TDictionary<Integer, TBenchRecord102>;
  DG_TBenchRecord102: TDictionary<TGUID, TBenchRecord102>;
  DS_TBenchRecord103: TDictionary<string, TBenchRecord103>;
  DI_TBenchRecord103: TDictionary<Integer, TBenchRecord103>;
  DG_TBenchRecord103: TDictionary<TGUID, TBenchRecord103>;
  DS_TBenchRecord104: TDictionary<string, TBenchRecord104>;
  DI_TBenchRecord104: TDictionary<Integer, TBenchRecord104>;
  DG_TBenchRecord104: TDictionary<TGUID, TBenchRecord104>;
  DS_TBenchRecord105: TDictionary<string, TBenchRecord105>;
  DI_TBenchRecord105: TDictionary<Integer, TBenchRecord105>;
  DG_TBenchRecord105: TDictionary<TGUID, TBenchRecord105>;
  DS_TBenchRecord106: TDictionary<string, TBenchRecord106>;
  DI_TBenchRecord106: TDictionary<Integer, TBenchRecord106>;
  DG_TBenchRecord106: TDictionary<TGUID, TBenchRecord106>;
  DS_TBenchRecord107: TDictionary<string, TBenchRecord107>;
  DI_TBenchRecord107: TDictionary<Integer, TBenchRecord107>;
  DG_TBenchRecord107: TDictionary<TGUID, TBenchRecord107>;
  DS_TBenchRecord108: TDictionary<string, TBenchRecord108>;
  DI_TBenchRecord108: TDictionary<Integer, TBenchRecord108>;
  DG_TBenchRecord108: TDictionary<TGUID, TBenchRecord108>;
  DS_TBenchRecord109: TDictionary<string, TBenchRecord109>;
  DI_TBenchRecord109: TDictionary<Integer, TBenchRecord109>;
  DG_TBenchRecord109: TDictionary<TGUID, TBenchRecord109>;
  DS_TBenchRecord110: TDictionary<string, TBenchRecord110>;
  DI_TBenchRecord110: TDictionary<Integer, TBenchRecord110>;
  DG_TBenchRecord110: TDictionary<TGUID, TBenchRecord110>;
  DS_TBenchRecord111: TDictionary<string, TBenchRecord111>;
  DI_TBenchRecord111: TDictionary<Integer, TBenchRecord111>;
  DG_TBenchRecord111: TDictionary<TGUID, TBenchRecord111>;
  DS_TBenchRecord112: TDictionary<string, TBenchRecord112>;
  DI_TBenchRecord112: TDictionary<Integer, TBenchRecord112>;
  DG_TBenchRecord112: TDictionary<TGUID, TBenchRecord112>;
  DS_TBenchRecord113: TDictionary<string, TBenchRecord113>;
  DI_TBenchRecord113: TDictionary<Integer, TBenchRecord113>;
  DG_TBenchRecord113: TDictionary<TGUID, TBenchRecord113>;
  DS_TBenchRecord114: TDictionary<string, TBenchRecord114>;
  DI_TBenchRecord114: TDictionary<Integer, TBenchRecord114>;
  DG_TBenchRecord114: TDictionary<TGUID, TBenchRecord114>;
  DS_TBenchRecord115: TDictionary<string, TBenchRecord115>;
  DI_TBenchRecord115: TDictionary<Integer, TBenchRecord115>;
  DG_TBenchRecord115: TDictionary<TGUID, TBenchRecord115>;
  DS_TBenchRecord116: TDictionary<string, TBenchRecord116>;
  DI_TBenchRecord116: TDictionary<Integer, TBenchRecord116>;
  DG_TBenchRecord116: TDictionary<TGUID, TBenchRecord116>;
  DS_TBenchRecord117: TDictionary<string, TBenchRecord117>;
  DI_TBenchRecord117: TDictionary<Integer, TBenchRecord117>;
  DG_TBenchRecord117: TDictionary<TGUID, TBenchRecord117>;
  DS_TBenchRecord118: TDictionary<string, TBenchRecord118>;
  DI_TBenchRecord118: TDictionary<Integer, TBenchRecord118>;
  DG_TBenchRecord118: TDictionary<TGUID, TBenchRecord118>;
  DS_TBenchRecord119: TDictionary<string, TBenchRecord119>;
  DI_TBenchRecord119: TDictionary<Integer, TBenchRecord119>;
  DG_TBenchRecord119: TDictionary<TGUID, TBenchRecord119>;
  DS_TBenchRecord120: TDictionary<string, TBenchRecord120>;
  DI_TBenchRecord120: TDictionary<Integer, TBenchRecord120>;
  DG_TBenchRecord120: TDictionary<TGUID, TBenchRecord120>;
  DS_TBenchRecord121: TDictionary<string, TBenchRecord121>;
  DI_TBenchRecord121: TDictionary<Integer, TBenchRecord121>;
  DG_TBenchRecord121: TDictionary<TGUID, TBenchRecord121>;
  DS_TBenchRecord122: TDictionary<string, TBenchRecord122>;
  DI_TBenchRecord122: TDictionary<Integer, TBenchRecord122>;
  DG_TBenchRecord122: TDictionary<TGUID, TBenchRecord122>;
  DS_TBenchRecord123: TDictionary<string, TBenchRecord123>;
  DI_TBenchRecord123: TDictionary<Integer, TBenchRecord123>;
  DG_TBenchRecord123: TDictionary<TGUID, TBenchRecord123>;
  DS_TBenchRecord124: TDictionary<string, TBenchRecord124>;
  DI_TBenchRecord124: TDictionary<Integer, TBenchRecord124>;
  DG_TBenchRecord124: TDictionary<TGUID, TBenchRecord124>;
  DS_TBenchRecord125: TDictionary<string, TBenchRecord125>;
  DI_TBenchRecord125: TDictionary<Integer, TBenchRecord125>;
  DG_TBenchRecord125: TDictionary<TGUID, TBenchRecord125>;
  DS_TBenchRecord126: TDictionary<string, TBenchRecord126>;
  DI_TBenchRecord126: TDictionary<Integer, TBenchRecord126>;
  DG_TBenchRecord126: TDictionary<TGUID, TBenchRecord126>;
  DS_TBenchRecord127: TDictionary<string, TBenchRecord127>;
  DI_TBenchRecord127: TDictionary<Integer, TBenchRecord127>;
  DG_TBenchRecord127: TDictionary<TGUID, TBenchRecord127>;
  DS_TBenchRecord128: TDictionary<string, TBenchRecord128>;
  DI_TBenchRecord128: TDictionary<Integer, TBenchRecord128>;
  DG_TBenchRecord128: TDictionary<TGUID, TBenchRecord128>;
  DS_TBenchRecord129: TDictionary<string, TBenchRecord129>;
  DI_TBenchRecord129: TDictionary<Integer, TBenchRecord129>;
  DG_TBenchRecord129: TDictionary<TGUID, TBenchRecord129>;
  DS_TBenchRecord130: TDictionary<string, TBenchRecord130>;
  DI_TBenchRecord130: TDictionary<Integer, TBenchRecord130>;
  DG_TBenchRecord130: TDictionary<TGUID, TBenchRecord130>;
  DS_TBenchRecord131: TDictionary<string, TBenchRecord131>;
  DI_TBenchRecord131: TDictionary<Integer, TBenchRecord131>;
  DG_TBenchRecord131: TDictionary<TGUID, TBenchRecord131>;
  DS_TBenchRecord132: TDictionary<string, TBenchRecord132>;
  DI_TBenchRecord132: TDictionary<Integer, TBenchRecord132>;
  DG_TBenchRecord132: TDictionary<TGUID, TBenchRecord132>;
  DS_TBenchRecord133: TDictionary<string, TBenchRecord133>;
  DI_TBenchRecord133: TDictionary<Integer, TBenchRecord133>;
  DG_TBenchRecord133: TDictionary<TGUID, TBenchRecord133>;
  DS_TBenchRecord134: TDictionary<string, TBenchRecord134>;
  DI_TBenchRecord134: TDictionary<Integer, TBenchRecord134>;
  DG_TBenchRecord134: TDictionary<TGUID, TBenchRecord134>;
  DS_TBenchRecord135: TDictionary<string, TBenchRecord135>;
  DI_TBenchRecord135: TDictionary<Integer, TBenchRecord135>;
  DG_TBenchRecord135: TDictionary<TGUID, TBenchRecord135>;
  DS_TBenchRecord136: TDictionary<string, TBenchRecord136>;
  DI_TBenchRecord136: TDictionary<Integer, TBenchRecord136>;
  DG_TBenchRecord136: TDictionary<TGUID, TBenchRecord136>;
  DS_TBenchRecord137: TDictionary<string, TBenchRecord137>;
  DI_TBenchRecord137: TDictionary<Integer, TBenchRecord137>;
  DG_TBenchRecord137: TDictionary<TGUID, TBenchRecord137>;
  DS_TBenchRecord138: TDictionary<string, TBenchRecord138>;
  DI_TBenchRecord138: TDictionary<Integer, TBenchRecord138>;
  DG_TBenchRecord138: TDictionary<TGUID, TBenchRecord138>;
  DS_TBenchRecord139: TDictionary<string, TBenchRecord139>;
  DI_TBenchRecord139: TDictionary<Integer, TBenchRecord139>;
  DG_TBenchRecord139: TDictionary<TGUID, TBenchRecord139>;
  DS_TBenchRecord140: TDictionary<string, TBenchRecord140>;
  DI_TBenchRecord140: TDictionary<Integer, TBenchRecord140>;
  DG_TBenchRecord140: TDictionary<TGUID, TBenchRecord140>;
  DS_TBenchRecord141: TDictionary<string, TBenchRecord141>;
  DI_TBenchRecord141: TDictionary<Integer, TBenchRecord141>;
  DG_TBenchRecord141: TDictionary<TGUID, TBenchRecord141>;
  DS_TBenchRecord142: TDictionary<string, TBenchRecord142>;
  DI_TBenchRecord142: TDictionary<Integer, TBenchRecord142>;
  DG_TBenchRecord142: TDictionary<TGUID, TBenchRecord142>;
  DS_TBenchRecord143: TDictionary<string, TBenchRecord143>;
  DI_TBenchRecord143: TDictionary<Integer, TBenchRecord143>;
  DG_TBenchRecord143: TDictionary<TGUID, TBenchRecord143>;
  DS_TBenchRecord144: TDictionary<string, TBenchRecord144>;
  DI_TBenchRecord144: TDictionary<Integer, TBenchRecord144>;
  DG_TBenchRecord144: TDictionary<TGUID, TBenchRecord144>;
  DS_TBenchRecord145: TDictionary<string, TBenchRecord145>;
  DI_TBenchRecord145: TDictionary<Integer, TBenchRecord145>;
  DG_TBenchRecord145: TDictionary<TGUID, TBenchRecord145>;
  DS_TBenchRecord146: TDictionary<string, TBenchRecord146>;
  DI_TBenchRecord146: TDictionary<Integer, TBenchRecord146>;
  DG_TBenchRecord146: TDictionary<TGUID, TBenchRecord146>;
  DS_TBenchRecord147: TDictionary<string, TBenchRecord147>;
  DI_TBenchRecord147: TDictionary<Integer, TBenchRecord147>;
  DG_TBenchRecord147: TDictionary<TGUID, TBenchRecord147>;
  DS_TBenchRecord148: TDictionary<string, TBenchRecord148>;
  DI_TBenchRecord148: TDictionary<Integer, TBenchRecord148>;
  DG_TBenchRecord148: TDictionary<TGUID, TBenchRecord148>;
  DS_TBenchRecord149: TDictionary<string, TBenchRecord149>;
  DI_TBenchRecord149: TDictionary<Integer, TBenchRecord149>;
  DG_TBenchRecord149: TDictionary<TGUID, TBenchRecord149>;
  DS_TBenchRecord150: TDictionary<string, TBenchRecord150>;
  DI_TBenchRecord150: TDictionary<Integer, TBenchRecord150>;
  DG_TBenchRecord150: TDictionary<TGUID, TBenchRecord150>;
  DS_TBenchRecord151: TDictionary<string, TBenchRecord151>;
  DI_TBenchRecord151: TDictionary<Integer, TBenchRecord151>;
  DG_TBenchRecord151: TDictionary<TGUID, TBenchRecord151>;
  DS_TBenchRecord152: TDictionary<string, TBenchRecord152>;
  DI_TBenchRecord152: TDictionary<Integer, TBenchRecord152>;
  DG_TBenchRecord152: TDictionary<TGUID, TBenchRecord152>;
  DS_TBenchRecord153: TDictionary<string, TBenchRecord153>;
  DI_TBenchRecord153: TDictionary<Integer, TBenchRecord153>;
  DG_TBenchRecord153: TDictionary<TGUID, TBenchRecord153>;
  DS_TBenchRecord154: TDictionary<string, TBenchRecord154>;
  DI_TBenchRecord154: TDictionary<Integer, TBenchRecord154>;
  DG_TBenchRecord154: TDictionary<TGUID, TBenchRecord154>;
  DS_TBenchRecord155: TDictionary<string, TBenchRecord155>;
  DI_TBenchRecord155: TDictionary<Integer, TBenchRecord155>;
  DG_TBenchRecord155: TDictionary<TGUID, TBenchRecord155>;
  DS_TBenchRecord156: TDictionary<string, TBenchRecord156>;
  DI_TBenchRecord156: TDictionary<Integer, TBenchRecord156>;
  DG_TBenchRecord156: TDictionary<TGUID, TBenchRecord156>;
  DS_TBenchRecord157: TDictionary<string, TBenchRecord157>;
  DI_TBenchRecord157: TDictionary<Integer, TBenchRecord157>;
  DG_TBenchRecord157: TDictionary<TGUID, TBenchRecord157>;
  DS_TBenchRecord158: TDictionary<string, TBenchRecord158>;
  DI_TBenchRecord158: TDictionary<Integer, TBenchRecord158>;
  DG_TBenchRecord158: TDictionary<TGUID, TBenchRecord158>;
  DS_TBenchRecord159: TDictionary<string, TBenchRecord159>;
  DI_TBenchRecord159: TDictionary<Integer, TBenchRecord159>;
  DG_TBenchRecord159: TDictionary<TGUID, TBenchRecord159>;
  DS_TBenchRecord160: TDictionary<string, TBenchRecord160>;
  DI_TBenchRecord160: TDictionary<Integer, TBenchRecord160>;
  DG_TBenchRecord160: TDictionary<TGUID, TBenchRecord160>;
  DS_TBenchRecord161: TDictionary<string, TBenchRecord161>;
  DI_TBenchRecord161: TDictionary<Integer, TBenchRecord161>;
  DG_TBenchRecord161: TDictionary<TGUID, TBenchRecord161>;
  DS_TBenchRecord162: TDictionary<string, TBenchRecord162>;
  DI_TBenchRecord162: TDictionary<Integer, TBenchRecord162>;
  DG_TBenchRecord162: TDictionary<TGUID, TBenchRecord162>;
  DS_TBenchRecord163: TDictionary<string, TBenchRecord163>;
  DI_TBenchRecord163: TDictionary<Integer, TBenchRecord163>;
  DG_TBenchRecord163: TDictionary<TGUID, TBenchRecord163>;
  DS_TBenchRecord164: TDictionary<string, TBenchRecord164>;
  DI_TBenchRecord164: TDictionary<Integer, TBenchRecord164>;
  DG_TBenchRecord164: TDictionary<TGUID, TBenchRecord164>;
  DS_TBenchRecord165: TDictionary<string, TBenchRecord165>;
  DI_TBenchRecord165: TDictionary<Integer, TBenchRecord165>;
  DG_TBenchRecord165: TDictionary<TGUID, TBenchRecord165>;
  DS_TBenchRecord166: TDictionary<string, TBenchRecord166>;
  DI_TBenchRecord166: TDictionary<Integer, TBenchRecord166>;
  DG_TBenchRecord166: TDictionary<TGUID, TBenchRecord166>;
  DS_TBenchRecord167: TDictionary<string, TBenchRecord167>;
  DI_TBenchRecord167: TDictionary<Integer, TBenchRecord167>;
  DG_TBenchRecord167: TDictionary<TGUID, TBenchRecord167>;
  DS_TBenchRecord168: TDictionary<string, TBenchRecord168>;
  DI_TBenchRecord168: TDictionary<Integer, TBenchRecord168>;
  DG_TBenchRecord168: TDictionary<TGUID, TBenchRecord168>;
  DS_TBenchRecord169: TDictionary<string, TBenchRecord169>;
  DI_TBenchRecord169: TDictionary<Integer, TBenchRecord169>;
  DG_TBenchRecord169: TDictionary<TGUID, TBenchRecord169>;
  DS_TBenchRecord170: TDictionary<string, TBenchRecord170>;
  DI_TBenchRecord170: TDictionary<Integer, TBenchRecord170>;
  DG_TBenchRecord170: TDictionary<TGUID, TBenchRecord170>;
  DS_TBenchRecord171: TDictionary<string, TBenchRecord171>;
  DI_TBenchRecord171: TDictionary<Integer, TBenchRecord171>;
  DG_TBenchRecord171: TDictionary<TGUID, TBenchRecord171>;
  DS_TBenchRecord172: TDictionary<string, TBenchRecord172>;
  DI_TBenchRecord172: TDictionary<Integer, TBenchRecord172>;
  DG_TBenchRecord172: TDictionary<TGUID, TBenchRecord172>;
  DS_TBenchRecord173: TDictionary<string, TBenchRecord173>;
  DI_TBenchRecord173: TDictionary<Integer, TBenchRecord173>;
  DG_TBenchRecord173: TDictionary<TGUID, TBenchRecord173>;
  DS_TBenchRecord174: TDictionary<string, TBenchRecord174>;
  DI_TBenchRecord174: TDictionary<Integer, TBenchRecord174>;
  DG_TBenchRecord174: TDictionary<TGUID, TBenchRecord174>;
  DS_TBenchRecord175: TDictionary<string, TBenchRecord175>;
  DI_TBenchRecord175: TDictionary<Integer, TBenchRecord175>;
  DG_TBenchRecord175: TDictionary<TGUID, TBenchRecord175>;
  DS_TBenchRecord176: TDictionary<string, TBenchRecord176>;
  DI_TBenchRecord176: TDictionary<Integer, TBenchRecord176>;
  DG_TBenchRecord176: TDictionary<TGUID, TBenchRecord176>;
  DS_TBenchRecord177: TDictionary<string, TBenchRecord177>;
  DI_TBenchRecord177: TDictionary<Integer, TBenchRecord177>;
  DG_TBenchRecord177: TDictionary<TGUID, TBenchRecord177>;
  DS_TBenchRecord178: TDictionary<string, TBenchRecord178>;
  DI_TBenchRecord178: TDictionary<Integer, TBenchRecord178>;
  DG_TBenchRecord178: TDictionary<TGUID, TBenchRecord178>;
  DS_TBenchRecord179: TDictionary<string, TBenchRecord179>;
  DI_TBenchRecord179: TDictionary<Integer, TBenchRecord179>;
  DG_TBenchRecord179: TDictionary<TGUID, TBenchRecord179>;
  DS_TBenchRecord180: TDictionary<string, TBenchRecord180>;
  DI_TBenchRecord180: TDictionary<Integer, TBenchRecord180>;
  DG_TBenchRecord180: TDictionary<TGUID, TBenchRecord180>;
  DS_TBenchRecord181: TDictionary<string, TBenchRecord181>;
  DI_TBenchRecord181: TDictionary<Integer, TBenchRecord181>;
  DG_TBenchRecord181: TDictionary<TGUID, TBenchRecord181>;
  DS_TBenchRecord182: TDictionary<string, TBenchRecord182>;
  DI_TBenchRecord182: TDictionary<Integer, TBenchRecord182>;
  DG_TBenchRecord182: TDictionary<TGUID, TBenchRecord182>;
  DS_TBenchRecord183: TDictionary<string, TBenchRecord183>;
  DI_TBenchRecord183: TDictionary<Integer, TBenchRecord183>;
  DG_TBenchRecord183: TDictionary<TGUID, TBenchRecord183>;
  DS_TBenchRecord184: TDictionary<string, TBenchRecord184>;
  DI_TBenchRecord184: TDictionary<Integer, TBenchRecord184>;
  DG_TBenchRecord184: TDictionary<TGUID, TBenchRecord184>;
  DS_TBenchRecord185: TDictionary<string, TBenchRecord185>;
  DI_TBenchRecord185: TDictionary<Integer, TBenchRecord185>;
  DG_TBenchRecord185: TDictionary<TGUID, TBenchRecord185>;
  DS_TBenchRecord186: TDictionary<string, TBenchRecord186>;
  DI_TBenchRecord186: TDictionary<Integer, TBenchRecord186>;
  DG_TBenchRecord186: TDictionary<TGUID, TBenchRecord186>;
  DS_TBenchRecord187: TDictionary<string, TBenchRecord187>;
  DI_TBenchRecord187: TDictionary<Integer, TBenchRecord187>;
  DG_TBenchRecord187: TDictionary<TGUID, TBenchRecord187>;
  DS_TBenchRecord188: TDictionary<string, TBenchRecord188>;
  DI_TBenchRecord188: TDictionary<Integer, TBenchRecord188>;
  DG_TBenchRecord188: TDictionary<TGUID, TBenchRecord188>;
  DS_TBenchRecord189: TDictionary<string, TBenchRecord189>;
  DI_TBenchRecord189: TDictionary<Integer, TBenchRecord189>;
  DG_TBenchRecord189: TDictionary<TGUID, TBenchRecord189>;
  DS_TBenchRecord190: TDictionary<string, TBenchRecord190>;
  DI_TBenchRecord190: TDictionary<Integer, TBenchRecord190>;
  DG_TBenchRecord190: TDictionary<TGUID, TBenchRecord190>;
  DS_TBenchRecord191: TDictionary<string, TBenchRecord191>;
  DI_TBenchRecord191: TDictionary<Integer, TBenchRecord191>;
  DG_TBenchRecord191: TDictionary<TGUID, TBenchRecord191>;
  DS_TBenchRecord192: TDictionary<string, TBenchRecord192>;
  DI_TBenchRecord192: TDictionary<Integer, TBenchRecord192>;
  DG_TBenchRecord192: TDictionary<TGUID, TBenchRecord192>;
  DS_TBenchRecord193: TDictionary<string, TBenchRecord193>;
  DI_TBenchRecord193: TDictionary<Integer, TBenchRecord193>;
  DG_TBenchRecord193: TDictionary<TGUID, TBenchRecord193>;
  DS_TBenchRecord194: TDictionary<string, TBenchRecord194>;
  DI_TBenchRecord194: TDictionary<Integer, TBenchRecord194>;
  DG_TBenchRecord194: TDictionary<TGUID, TBenchRecord194>;
  DS_TBenchRecord195: TDictionary<string, TBenchRecord195>;
  DI_TBenchRecord195: TDictionary<Integer, TBenchRecord195>;
  DG_TBenchRecord195: TDictionary<TGUID, TBenchRecord195>;
  DS_TBenchRecord196: TDictionary<string, TBenchRecord196>;
  DI_TBenchRecord196: TDictionary<Integer, TBenchRecord196>;
  DG_TBenchRecord196: TDictionary<TGUID, TBenchRecord196>;
  DS_TBenchRecord197: TDictionary<string, TBenchRecord197>;
  DI_TBenchRecord197: TDictionary<Integer, TBenchRecord197>;
  DG_TBenchRecord197: TDictionary<TGUID, TBenchRecord197>;
  DS_TBenchRecord198: TDictionary<string, TBenchRecord198>;
  DI_TBenchRecord198: TDictionary<Integer, TBenchRecord198>;
  DG_TBenchRecord198: TDictionary<TGUID, TBenchRecord198>;
  DS_TBenchRecord199: TDictionary<string, TBenchRecord199>;
  DI_TBenchRecord199: TDictionary<Integer, TBenchRecord199>;
  DG_TBenchRecord199: TDictionary<TGUID, TBenchRecord199>;
  DS_TBenchRecord200: TDictionary<string, TBenchRecord200>;
  DI_TBenchRecord200: TDictionary<Integer, TBenchRecord200>;
  DG_TBenchRecord200: TDictionary<TGUID, TBenchRecord200>;
  DS_TBenchRecord201: TDictionary<string, TBenchRecord201>;
  DI_TBenchRecord201: TDictionary<Integer, TBenchRecord201>;
  DG_TBenchRecord201: TDictionary<TGUID, TBenchRecord201>;
  DS_TBenchRecord202: TDictionary<string, TBenchRecord202>;
  DI_TBenchRecord202: TDictionary<Integer, TBenchRecord202>;
  DG_TBenchRecord202: TDictionary<TGUID, TBenchRecord202>;
  DS_TBenchRecord203: TDictionary<string, TBenchRecord203>;
  DI_TBenchRecord203: TDictionary<Integer, TBenchRecord203>;
  DG_TBenchRecord203: TDictionary<TGUID, TBenchRecord203>;
  DS_TBenchRecord204: TDictionary<string, TBenchRecord204>;
  DI_TBenchRecord204: TDictionary<Integer, TBenchRecord204>;
  DG_TBenchRecord204: TDictionary<TGUID, TBenchRecord204>;
  DS_TBenchRecord205: TDictionary<string, TBenchRecord205>;
  DI_TBenchRecord205: TDictionary<Integer, TBenchRecord205>;
  DG_TBenchRecord205: TDictionary<TGUID, TBenchRecord205>;
  DS_TBenchRecord206: TDictionary<string, TBenchRecord206>;
  DI_TBenchRecord206: TDictionary<Integer, TBenchRecord206>;
  DG_TBenchRecord206: TDictionary<TGUID, TBenchRecord206>;
  DS_TBenchRecord207: TDictionary<string, TBenchRecord207>;
  DI_TBenchRecord207: TDictionary<Integer, TBenchRecord207>;
  DG_TBenchRecord207: TDictionary<TGUID, TBenchRecord207>;
  DS_TBenchRecord208: TDictionary<string, TBenchRecord208>;
  DI_TBenchRecord208: TDictionary<Integer, TBenchRecord208>;
  DG_TBenchRecord208: TDictionary<TGUID, TBenchRecord208>;
  DS_TBenchRecord209: TDictionary<string, TBenchRecord209>;
  DI_TBenchRecord209: TDictionary<Integer, TBenchRecord209>;
  DG_TBenchRecord209: TDictionary<TGUID, TBenchRecord209>;
  DS_TBenchRecord210: TDictionary<string, TBenchRecord210>;
  DI_TBenchRecord210: TDictionary<Integer, TBenchRecord210>;
  DG_TBenchRecord210: TDictionary<TGUID, TBenchRecord210>;
  DS_TBenchRecord211: TDictionary<string, TBenchRecord211>;
  DI_TBenchRecord211: TDictionary<Integer, TBenchRecord211>;
  DG_TBenchRecord211: TDictionary<TGUID, TBenchRecord211>;
  DS_TBenchRecord212: TDictionary<string, TBenchRecord212>;
  DI_TBenchRecord212: TDictionary<Integer, TBenchRecord212>;
  DG_TBenchRecord212: TDictionary<TGUID, TBenchRecord212>;
  DS_TBenchRecord213: TDictionary<string, TBenchRecord213>;
  DI_TBenchRecord213: TDictionary<Integer, TBenchRecord213>;
  DG_TBenchRecord213: TDictionary<TGUID, TBenchRecord213>;
  DS_TBenchRecord214: TDictionary<string, TBenchRecord214>;
  DI_TBenchRecord214: TDictionary<Integer, TBenchRecord214>;
  DG_TBenchRecord214: TDictionary<TGUID, TBenchRecord214>;
  DS_TBenchRecord215: TDictionary<string, TBenchRecord215>;
  DI_TBenchRecord215: TDictionary<Integer, TBenchRecord215>;
  DG_TBenchRecord215: TDictionary<TGUID, TBenchRecord215>;
  DS_TBenchRecord216: TDictionary<string, TBenchRecord216>;
  DI_TBenchRecord216: TDictionary<Integer, TBenchRecord216>;
  DG_TBenchRecord216: TDictionary<TGUID, TBenchRecord216>;
  DS_TBenchRecord217: TDictionary<string, TBenchRecord217>;
  DI_TBenchRecord217: TDictionary<Integer, TBenchRecord217>;
  DG_TBenchRecord217: TDictionary<TGUID, TBenchRecord217>;
  DS_TBenchRecord218: TDictionary<string, TBenchRecord218>;
  DI_TBenchRecord218: TDictionary<Integer, TBenchRecord218>;
  DG_TBenchRecord218: TDictionary<TGUID, TBenchRecord218>;
  DS_TBenchRecord219: TDictionary<string, TBenchRecord219>;
  DI_TBenchRecord219: TDictionary<Integer, TBenchRecord219>;
  DG_TBenchRecord219: TDictionary<TGUID, TBenchRecord219>;
  DS_TBenchRecord220: TDictionary<string, TBenchRecord220>;
  DI_TBenchRecord220: TDictionary<Integer, TBenchRecord220>;
  DG_TBenchRecord220: TDictionary<TGUID, TBenchRecord220>;
  DS_TBenchRecord221: TDictionary<string, TBenchRecord221>;
  DI_TBenchRecord221: TDictionary<Integer, TBenchRecord221>;
  DG_TBenchRecord221: TDictionary<TGUID, TBenchRecord221>;
  DS_TBenchRecord222: TDictionary<string, TBenchRecord222>;
  DI_TBenchRecord222: TDictionary<Integer, TBenchRecord222>;
  DG_TBenchRecord222: TDictionary<TGUID, TBenchRecord222>;
  DS_TBenchRecord223: TDictionary<string, TBenchRecord223>;
  DI_TBenchRecord223: TDictionary<Integer, TBenchRecord223>;
  DG_TBenchRecord223: TDictionary<TGUID, TBenchRecord223>;
  DS_TBenchRecord224: TDictionary<string, TBenchRecord224>;
  DI_TBenchRecord224: TDictionary<Integer, TBenchRecord224>;
  DG_TBenchRecord224: TDictionary<TGUID, TBenchRecord224>;
  DS_TBenchRecord225: TDictionary<string, TBenchRecord225>;
  DI_TBenchRecord225: TDictionary<Integer, TBenchRecord225>;
  DG_TBenchRecord225: TDictionary<TGUID, TBenchRecord225>;
  DS_TBenchRecord226: TDictionary<string, TBenchRecord226>;
  DI_TBenchRecord226: TDictionary<Integer, TBenchRecord226>;
  DG_TBenchRecord226: TDictionary<TGUID, TBenchRecord226>;
  DS_TBenchRecord227: TDictionary<string, TBenchRecord227>;
  DI_TBenchRecord227: TDictionary<Integer, TBenchRecord227>;
  DG_TBenchRecord227: TDictionary<TGUID, TBenchRecord227>;
  DS_TBenchRecord228: TDictionary<string, TBenchRecord228>;
  DI_TBenchRecord228: TDictionary<Integer, TBenchRecord228>;
  DG_TBenchRecord228: TDictionary<TGUID, TBenchRecord228>;
  DS_TBenchRecord229: TDictionary<string, TBenchRecord229>;
  DI_TBenchRecord229: TDictionary<Integer, TBenchRecord229>;
  DG_TBenchRecord229: TDictionary<TGUID, TBenchRecord229>;
  DS_TBenchRecord230: TDictionary<string, TBenchRecord230>;
  DI_TBenchRecord230: TDictionary<Integer, TBenchRecord230>;
  DG_TBenchRecord230: TDictionary<TGUID, TBenchRecord230>;
  DS_TBenchRecord231: TDictionary<string, TBenchRecord231>;
  DI_TBenchRecord231: TDictionary<Integer, TBenchRecord231>;
  DG_TBenchRecord231: TDictionary<TGUID, TBenchRecord231>;
  DS_TBenchRecord232: TDictionary<string, TBenchRecord232>;
  DI_TBenchRecord232: TDictionary<Integer, TBenchRecord232>;
  DG_TBenchRecord232: TDictionary<TGUID, TBenchRecord232>;
  DS_TBenchRecord233: TDictionary<string, TBenchRecord233>;
  DI_TBenchRecord233: TDictionary<Integer, TBenchRecord233>;
  DG_TBenchRecord233: TDictionary<TGUID, TBenchRecord233>;
  DS_TBenchRecord234: TDictionary<string, TBenchRecord234>;
  DI_TBenchRecord234: TDictionary<Integer, TBenchRecord234>;
  DG_TBenchRecord234: TDictionary<TGUID, TBenchRecord234>;
  DS_TBenchRecord235: TDictionary<string, TBenchRecord235>;
  DI_TBenchRecord235: TDictionary<Integer, TBenchRecord235>;
  DG_TBenchRecord235: TDictionary<TGUID, TBenchRecord235>;
  DS_TBenchRecord236: TDictionary<string, TBenchRecord236>;
  DI_TBenchRecord236: TDictionary<Integer, TBenchRecord236>;
  DG_TBenchRecord236: TDictionary<TGUID, TBenchRecord236>;
  DS_TBenchRecord237: TDictionary<string, TBenchRecord237>;
  DI_TBenchRecord237: TDictionary<Integer, TBenchRecord237>;
  DG_TBenchRecord237: TDictionary<TGUID, TBenchRecord237>;
  DS_TBenchRecord238: TDictionary<string, TBenchRecord238>;
  DI_TBenchRecord238: TDictionary<Integer, TBenchRecord238>;
  DG_TBenchRecord238: TDictionary<TGUID, TBenchRecord238>;
  DS_TBenchRecord239: TDictionary<string, TBenchRecord239>;
  DI_TBenchRecord239: TDictionary<Integer, TBenchRecord239>;
  DG_TBenchRecord239: TDictionary<TGUID, TBenchRecord239>;
  DS_TBenchRecord240: TDictionary<string, TBenchRecord240>;
  DI_TBenchRecord240: TDictionary<Integer, TBenchRecord240>;
  DG_TBenchRecord240: TDictionary<TGUID, TBenchRecord240>;
  DS_TBenchRecord241: TDictionary<string, TBenchRecord241>;
  DI_TBenchRecord241: TDictionary<Integer, TBenchRecord241>;
  DG_TBenchRecord241: TDictionary<TGUID, TBenchRecord241>;
  DS_TBenchRecord242: TDictionary<string, TBenchRecord242>;
  DI_TBenchRecord242: TDictionary<Integer, TBenchRecord242>;
  DG_TBenchRecord242: TDictionary<TGUID, TBenchRecord242>;
  DS_TBenchRecord243: TDictionary<string, TBenchRecord243>;
  DI_TBenchRecord243: TDictionary<Integer, TBenchRecord243>;
  DG_TBenchRecord243: TDictionary<TGUID, TBenchRecord243>;
  DS_TBenchRecord244: TDictionary<string, TBenchRecord244>;
  DI_TBenchRecord244: TDictionary<Integer, TBenchRecord244>;
  DG_TBenchRecord244: TDictionary<TGUID, TBenchRecord244>;
  DS_TBenchRecord245: TDictionary<string, TBenchRecord245>;
  DI_TBenchRecord245: TDictionary<Integer, TBenchRecord245>;
  DG_TBenchRecord245: TDictionary<TGUID, TBenchRecord245>;
  DS_TBenchRecord246: TDictionary<string, TBenchRecord246>;
  DI_TBenchRecord246: TDictionary<Integer, TBenchRecord246>;
  DG_TBenchRecord246: TDictionary<TGUID, TBenchRecord246>;
  DS_TBenchRecord247: TDictionary<string, TBenchRecord247>;
  DI_TBenchRecord247: TDictionary<Integer, TBenchRecord247>;
  DG_TBenchRecord247: TDictionary<TGUID, TBenchRecord247>;
  DS_TBenchRecord248: TDictionary<string, TBenchRecord248>;
  DI_TBenchRecord248: TDictionary<Integer, TBenchRecord248>;
  DG_TBenchRecord248: TDictionary<TGUID, TBenchRecord248>;
  DS_TBenchRecord249: TDictionary<string, TBenchRecord249>;
  DI_TBenchRecord249: TDictionary<Integer, TBenchRecord249>;
  DG_TBenchRecord249: TDictionary<TGUID, TBenchRecord249>;
  DS_TBenchRecord250: TDictionary<string, TBenchRecord250>;
  DI_TBenchRecord250: TDictionary<Integer, TBenchRecord250>;
  DG_TBenchRecord250: TDictionary<TGUID, TBenchRecord250>;
  DS_TBenchRecord251: TDictionary<string, TBenchRecord251>;
  DI_TBenchRecord251: TDictionary<Integer, TBenchRecord251>;
  DG_TBenchRecord251: TDictionary<TGUID, TBenchRecord251>;
  DS_TBenchRecord252: TDictionary<string, TBenchRecord252>;
  DI_TBenchRecord252: TDictionary<Integer, TBenchRecord252>;
  DG_TBenchRecord252: TDictionary<TGUID, TBenchRecord252>;
  DS_TBenchRecord253: TDictionary<string, TBenchRecord253>;
  DI_TBenchRecord253: TDictionary<Integer, TBenchRecord253>;
  DG_TBenchRecord253: TDictionary<TGUID, TBenchRecord253>;
  DS_TBenchRecord254: TDictionary<string, TBenchRecord254>;
  DI_TBenchRecord254: TDictionary<Integer, TBenchRecord254>;
  DG_TBenchRecord254: TDictionary<TGUID, TBenchRecord254>;
  DS_TBenchRecord255: TDictionary<string, TBenchRecord255>;
  DI_TBenchRecord255: TDictionary<Integer, TBenchRecord255>;
  DG_TBenchRecord255: TDictionary<TGUID, TBenchRecord255>;
  DS_TBenchRecord256: TDictionary<string, TBenchRecord256>;
  DI_TBenchRecord256: TDictionary<Integer, TBenchRecord256>;
  DG_TBenchRecord256: TDictionary<TGUID, TBenchRecord256>;
  DS_TBenchRecord257: TDictionary<string, TBenchRecord257>;
  DI_TBenchRecord257: TDictionary<Integer, TBenchRecord257>;
  DG_TBenchRecord257: TDictionary<TGUID, TBenchRecord257>;
  DS_TBenchRecord258: TDictionary<string, TBenchRecord258>;
  DI_TBenchRecord258: TDictionary<Integer, TBenchRecord258>;
  DG_TBenchRecord258: TDictionary<TGUID, TBenchRecord258>;
  DS_TBenchRecord259: TDictionary<string, TBenchRecord259>;
  DI_TBenchRecord259: TDictionary<Integer, TBenchRecord259>;
  DG_TBenchRecord259: TDictionary<TGUID, TBenchRecord259>;
  DS_TBenchRecord260: TDictionary<string, TBenchRecord260>;
  DI_TBenchRecord260: TDictionary<Integer, TBenchRecord260>;
  DG_TBenchRecord260: TDictionary<TGUID, TBenchRecord260>;
  DS_TBenchRecord261: TDictionary<string, TBenchRecord261>;
  DI_TBenchRecord261: TDictionary<Integer, TBenchRecord261>;
  DG_TBenchRecord261: TDictionary<TGUID, TBenchRecord261>;
  DS_TBenchRecord262: TDictionary<string, TBenchRecord262>;
  DI_TBenchRecord262: TDictionary<Integer, TBenchRecord262>;
  DG_TBenchRecord262: TDictionary<TGUID, TBenchRecord262>;
  DS_TBenchRecord263: TDictionary<string, TBenchRecord263>;
  DI_TBenchRecord263: TDictionary<Integer, TBenchRecord263>;
  DG_TBenchRecord263: TDictionary<TGUID, TBenchRecord263>;
  DS_TBenchRecord264: TDictionary<string, TBenchRecord264>;
  DI_TBenchRecord264: TDictionary<Integer, TBenchRecord264>;
  DG_TBenchRecord264: TDictionary<TGUID, TBenchRecord264>;
  DS_TBenchRecord265: TDictionary<string, TBenchRecord265>;
  DI_TBenchRecord265: TDictionary<Integer, TBenchRecord265>;
  DG_TBenchRecord265: TDictionary<TGUID, TBenchRecord265>;
  DS_TBenchRecord266: TDictionary<string, TBenchRecord266>;
  DI_TBenchRecord266: TDictionary<Integer, TBenchRecord266>;
  DG_TBenchRecord266: TDictionary<TGUID, TBenchRecord266>;
  DS_TBenchRecord267: TDictionary<string, TBenchRecord267>;
  DI_TBenchRecord267: TDictionary<Integer, TBenchRecord267>;
  DG_TBenchRecord267: TDictionary<TGUID, TBenchRecord267>;
  DS_TBenchRecord268: TDictionary<string, TBenchRecord268>;
  DI_TBenchRecord268: TDictionary<Integer, TBenchRecord268>;
  DG_TBenchRecord268: TDictionary<TGUID, TBenchRecord268>;
  DS_TBenchRecord269: TDictionary<string, TBenchRecord269>;
  DI_TBenchRecord269: TDictionary<Integer, TBenchRecord269>;
  DG_TBenchRecord269: TDictionary<TGUID, TBenchRecord269>;
  DS_TBenchRecord270: TDictionary<string, TBenchRecord270>;
  DI_TBenchRecord270: TDictionary<Integer, TBenchRecord270>;
  DG_TBenchRecord270: TDictionary<TGUID, TBenchRecord270>;
  DS_TBenchRecord271: TDictionary<string, TBenchRecord271>;
  DI_TBenchRecord271: TDictionary<Integer, TBenchRecord271>;
  DG_TBenchRecord271: TDictionary<TGUID, TBenchRecord271>;
  DS_TBenchRecord272: TDictionary<string, TBenchRecord272>;
  DI_TBenchRecord272: TDictionary<Integer, TBenchRecord272>;
  DG_TBenchRecord272: TDictionary<TGUID, TBenchRecord272>;
  DS_TBenchRecord273: TDictionary<string, TBenchRecord273>;
  DI_TBenchRecord273: TDictionary<Integer, TBenchRecord273>;
  DG_TBenchRecord273: TDictionary<TGUID, TBenchRecord273>;
  DS_TBenchRecord274: TDictionary<string, TBenchRecord274>;
  DI_TBenchRecord274: TDictionary<Integer, TBenchRecord274>;
  DG_TBenchRecord274: TDictionary<TGUID, TBenchRecord274>;
  DS_TBenchRecord275: TDictionary<string, TBenchRecord275>;
  DI_TBenchRecord275: TDictionary<Integer, TBenchRecord275>;
  DG_TBenchRecord275: TDictionary<TGUID, TBenchRecord275>;
  DS_TBenchRecord276: TDictionary<string, TBenchRecord276>;
  DI_TBenchRecord276: TDictionary<Integer, TBenchRecord276>;
  DG_TBenchRecord276: TDictionary<TGUID, TBenchRecord276>;
  DS_TBenchRecord277: TDictionary<string, TBenchRecord277>;
  DI_TBenchRecord277: TDictionary<Integer, TBenchRecord277>;
  DG_TBenchRecord277: TDictionary<TGUID, TBenchRecord277>;
  DS_TBenchRecord278: TDictionary<string, TBenchRecord278>;
  DI_TBenchRecord278: TDictionary<Integer, TBenchRecord278>;
  DG_TBenchRecord278: TDictionary<TGUID, TBenchRecord278>;
  DS_TBenchRecord279: TDictionary<string, TBenchRecord279>;
  DI_TBenchRecord279: TDictionary<Integer, TBenchRecord279>;
  DG_TBenchRecord279: TDictionary<TGUID, TBenchRecord279>;
  DS_TBenchRecord280: TDictionary<string, TBenchRecord280>;
  DI_TBenchRecord280: TDictionary<Integer, TBenchRecord280>;
  DG_TBenchRecord280: TDictionary<TGUID, TBenchRecord280>;
  DS_TBenchRecord281: TDictionary<string, TBenchRecord281>;
  DI_TBenchRecord281: TDictionary<Integer, TBenchRecord281>;
  DG_TBenchRecord281: TDictionary<TGUID, TBenchRecord281>;
  DS_TBenchRecord282: TDictionary<string, TBenchRecord282>;
  DI_TBenchRecord282: TDictionary<Integer, TBenchRecord282>;
  DG_TBenchRecord282: TDictionary<TGUID, TBenchRecord282>;
  DS_TBenchRecord283: TDictionary<string, TBenchRecord283>;
  DI_TBenchRecord283: TDictionary<Integer, TBenchRecord283>;
  DG_TBenchRecord283: TDictionary<TGUID, TBenchRecord283>;
  DS_TBenchRecord284: TDictionary<string, TBenchRecord284>;
  DI_TBenchRecord284: TDictionary<Integer, TBenchRecord284>;
  DG_TBenchRecord284: TDictionary<TGUID, TBenchRecord284>;
  DS_TBenchRecord285: TDictionary<string, TBenchRecord285>;
  DI_TBenchRecord285: TDictionary<Integer, TBenchRecord285>;
  DG_TBenchRecord285: TDictionary<TGUID, TBenchRecord285>;
  DS_TBenchRecord286: TDictionary<string, TBenchRecord286>;
  DI_TBenchRecord286: TDictionary<Integer, TBenchRecord286>;
  DG_TBenchRecord286: TDictionary<TGUID, TBenchRecord286>;
  DS_TBenchRecord287: TDictionary<string, TBenchRecord287>;
  DI_TBenchRecord287: TDictionary<Integer, TBenchRecord287>;
  DG_TBenchRecord287: TDictionary<TGUID, TBenchRecord287>;
  DS_TBenchRecord288: TDictionary<string, TBenchRecord288>;
  DI_TBenchRecord288: TDictionary<Integer, TBenchRecord288>;
  DG_TBenchRecord288: TDictionary<TGUID, TBenchRecord288>;
  DS_TBenchRecord289: TDictionary<string, TBenchRecord289>;
  DI_TBenchRecord289: TDictionary<Integer, TBenchRecord289>;
  DG_TBenchRecord289: TDictionary<TGUID, TBenchRecord289>;
  DS_TBenchRecord290: TDictionary<string, TBenchRecord290>;
  DI_TBenchRecord290: TDictionary<Integer, TBenchRecord290>;
  DG_TBenchRecord290: TDictionary<TGUID, TBenchRecord290>;
  DS_TBenchRecord291: TDictionary<string, TBenchRecord291>;
  DI_TBenchRecord291: TDictionary<Integer, TBenchRecord291>;
  DG_TBenchRecord291: TDictionary<TGUID, TBenchRecord291>;
  DS_TBenchRecord292: TDictionary<string, TBenchRecord292>;
  DI_TBenchRecord292: TDictionary<Integer, TBenchRecord292>;
  DG_TBenchRecord292: TDictionary<TGUID, TBenchRecord292>;
  DS_TBenchRecord293: TDictionary<string, TBenchRecord293>;
  DI_TBenchRecord293: TDictionary<Integer, TBenchRecord293>;
  DG_TBenchRecord293: TDictionary<TGUID, TBenchRecord293>;
  DS_TBenchRecord294: TDictionary<string, TBenchRecord294>;
  DI_TBenchRecord294: TDictionary<Integer, TBenchRecord294>;
  DG_TBenchRecord294: TDictionary<TGUID, TBenchRecord294>;
  DS_TBenchRecord295: TDictionary<string, TBenchRecord295>;
  DI_TBenchRecord295: TDictionary<Integer, TBenchRecord295>;
  DG_TBenchRecord295: TDictionary<TGUID, TBenchRecord295>;
  DS_TBenchRecord296: TDictionary<string, TBenchRecord296>;
  DI_TBenchRecord296: TDictionary<Integer, TBenchRecord296>;
  DG_TBenchRecord296: TDictionary<TGUID, TBenchRecord296>;
  DS_TBenchRecord297: TDictionary<string, TBenchRecord297>;
  DI_TBenchRecord297: TDictionary<Integer, TBenchRecord297>;
  DG_TBenchRecord297: TDictionary<TGUID, TBenchRecord297>;
  DS_TBenchRecord298: TDictionary<string, TBenchRecord298>;
  DI_TBenchRecord298: TDictionary<Integer, TBenchRecord298>;
  DG_TBenchRecord298: TDictionary<TGUID, TBenchRecord298>;
  DS_TBenchRecord299: TDictionary<string, TBenchRecord299>;
  DI_TBenchRecord299: TDictionary<Integer, TBenchRecord299>;
  DG_TBenchRecord299: TDictionary<TGUID, TBenchRecord299>;
  DS_TBenchRecord300: TDictionary<string, TBenchRecord300>;
  DI_TBenchRecord300: TDictionary<Integer, TBenchRecord300>;
  DG_TBenchRecord300: TDictionary<TGUID, TBenchRecord300>;
  DS_TBenchRecord301: TDictionary<string, TBenchRecord301>;
  DI_TBenchRecord301: TDictionary<Integer, TBenchRecord301>;
  DG_TBenchRecord301: TDictionary<TGUID, TBenchRecord301>;
  DS_TBenchRecord302: TDictionary<string, TBenchRecord302>;
  DI_TBenchRecord302: TDictionary<Integer, TBenchRecord302>;
  DG_TBenchRecord302: TDictionary<TGUID, TBenchRecord302>;
  DS_TBenchRecord303: TDictionary<string, TBenchRecord303>;
  DI_TBenchRecord303: TDictionary<Integer, TBenchRecord303>;
  DG_TBenchRecord303: TDictionary<TGUID, TBenchRecord303>;
  DS_TBenchRecord304: TDictionary<string, TBenchRecord304>;
  DI_TBenchRecord304: TDictionary<Integer, TBenchRecord304>;
  DG_TBenchRecord304: TDictionary<TGUID, TBenchRecord304>;
  DS_TBenchRecord305: TDictionary<string, TBenchRecord305>;
  DI_TBenchRecord305: TDictionary<Integer, TBenchRecord305>;
  DG_TBenchRecord305: TDictionary<TGUID, TBenchRecord305>;
  DS_TBenchRecord306: TDictionary<string, TBenchRecord306>;
  DI_TBenchRecord306: TDictionary<Integer, TBenchRecord306>;
  DG_TBenchRecord306: TDictionary<TGUID, TBenchRecord306>;
  DS_TBenchRecord307: TDictionary<string, TBenchRecord307>;
  DI_TBenchRecord307: TDictionary<Integer, TBenchRecord307>;
  DG_TBenchRecord307: TDictionary<TGUID, TBenchRecord307>;
  DS_TBenchRecord308: TDictionary<string, TBenchRecord308>;
  DI_TBenchRecord308: TDictionary<Integer, TBenchRecord308>;
  DG_TBenchRecord308: TDictionary<TGUID, TBenchRecord308>;
  DS_TBenchRecord309: TDictionary<string, TBenchRecord309>;
  DI_TBenchRecord309: TDictionary<Integer, TBenchRecord309>;
  DG_TBenchRecord309: TDictionary<TGUID, TBenchRecord309>;
  DS_TBenchRecord310: TDictionary<string, TBenchRecord310>;
  DI_TBenchRecord310: TDictionary<Integer, TBenchRecord310>;
  DG_TBenchRecord310: TDictionary<TGUID, TBenchRecord310>;
  DS_TBenchRecord311: TDictionary<string, TBenchRecord311>;
  DI_TBenchRecord311: TDictionary<Integer, TBenchRecord311>;
  DG_TBenchRecord311: TDictionary<TGUID, TBenchRecord311>;
  DS_TBenchRecord312: TDictionary<string, TBenchRecord312>;
  DI_TBenchRecord312: TDictionary<Integer, TBenchRecord312>;
  DG_TBenchRecord312: TDictionary<TGUID, TBenchRecord312>;
  DS_TBenchRecord313: TDictionary<string, TBenchRecord313>;
  DI_TBenchRecord313: TDictionary<Integer, TBenchRecord313>;
  DG_TBenchRecord313: TDictionary<TGUID, TBenchRecord313>;
  DS_TBenchRecord314: TDictionary<string, TBenchRecord314>;
  DI_TBenchRecord314: TDictionary<Integer, TBenchRecord314>;
  DG_TBenchRecord314: TDictionary<TGUID, TBenchRecord314>;
  DS_TBenchRecord315: TDictionary<string, TBenchRecord315>;
  DI_TBenchRecord315: TDictionary<Integer, TBenchRecord315>;
  DG_TBenchRecord315: TDictionary<TGUID, TBenchRecord315>;
  DS_TBenchRecord316: TDictionary<string, TBenchRecord316>;
  DI_TBenchRecord316: TDictionary<Integer, TBenchRecord316>;
  DG_TBenchRecord316: TDictionary<TGUID, TBenchRecord316>;
  DS_TBenchRecord317: TDictionary<string, TBenchRecord317>;
  DI_TBenchRecord317: TDictionary<Integer, TBenchRecord317>;
  DG_TBenchRecord317: TDictionary<TGUID, TBenchRecord317>;
  DS_TBenchRecord318: TDictionary<string, TBenchRecord318>;
  DI_TBenchRecord318: TDictionary<Integer, TBenchRecord318>;
  DG_TBenchRecord318: TDictionary<TGUID, TBenchRecord318>;
  DS_TBenchRecord319: TDictionary<string, TBenchRecord319>;
  DI_TBenchRecord319: TDictionary<Integer, TBenchRecord319>;
  DG_TBenchRecord319: TDictionary<TGUID, TBenchRecord319>;
  DS_TBenchRecord320: TDictionary<string, TBenchRecord320>;
  DI_TBenchRecord320: TDictionary<Integer, TBenchRecord320>;
  DG_TBenchRecord320: TDictionary<TGUID, TBenchRecord320>;
  DS_TBenchRecord321: TDictionary<string, TBenchRecord321>;
  DI_TBenchRecord321: TDictionary<Integer, TBenchRecord321>;
  DG_TBenchRecord321: TDictionary<TGUID, TBenchRecord321>;
  DS_TBenchRecord322: TDictionary<string, TBenchRecord322>;
  DI_TBenchRecord322: TDictionary<Integer, TBenchRecord322>;
  DG_TBenchRecord322: TDictionary<TGUID, TBenchRecord322>;
  DS_TBenchRecord323: TDictionary<string, TBenchRecord323>;
  DI_TBenchRecord323: TDictionary<Integer, TBenchRecord323>;
  DG_TBenchRecord323: TDictionary<TGUID, TBenchRecord323>;
  DS_TBenchRecord324: TDictionary<string, TBenchRecord324>;
  DI_TBenchRecord324: TDictionary<Integer, TBenchRecord324>;
  DG_TBenchRecord324: TDictionary<TGUID, TBenchRecord324>;
  DS_TBenchRecord325: TDictionary<string, TBenchRecord325>;
  DI_TBenchRecord325: TDictionary<Integer, TBenchRecord325>;
  DG_TBenchRecord325: TDictionary<TGUID, TBenchRecord325>;
  DS_TBenchRecord326: TDictionary<string, TBenchRecord326>;
  DI_TBenchRecord326: TDictionary<Integer, TBenchRecord326>;
  DG_TBenchRecord326: TDictionary<TGUID, TBenchRecord326>;
  DS_TBenchRecord327: TDictionary<string, TBenchRecord327>;
  DI_TBenchRecord327: TDictionary<Integer, TBenchRecord327>;
  DG_TBenchRecord327: TDictionary<TGUID, TBenchRecord327>;
  DS_TBenchRecord328: TDictionary<string, TBenchRecord328>;
  DI_TBenchRecord328: TDictionary<Integer, TBenchRecord328>;
  DG_TBenchRecord328: TDictionary<TGUID, TBenchRecord328>;
  DS_TBenchRecord329: TDictionary<string, TBenchRecord329>;
  DI_TBenchRecord329: TDictionary<Integer, TBenchRecord329>;
  DG_TBenchRecord329: TDictionary<TGUID, TBenchRecord329>;
  DS_TBenchRecord330: TDictionary<string, TBenchRecord330>;
  DI_TBenchRecord330: TDictionary<Integer, TBenchRecord330>;
  DG_TBenchRecord330: TDictionary<TGUID, TBenchRecord330>;
  DS_TBenchRecord331: TDictionary<string, TBenchRecord331>;
  DI_TBenchRecord331: TDictionary<Integer, TBenchRecord331>;
  DG_TBenchRecord331: TDictionary<TGUID, TBenchRecord331>;
  DS_TBenchRecord332: TDictionary<string, TBenchRecord332>;
  DI_TBenchRecord332: TDictionary<Integer, TBenchRecord332>;
  DG_TBenchRecord332: TDictionary<TGUID, TBenchRecord332>;
  DS_TBenchRecord333: TDictionary<string, TBenchRecord333>;
  DI_TBenchRecord333: TDictionary<Integer, TBenchRecord333>;
  DG_TBenchRecord333: TDictionary<TGUID, TBenchRecord333>;
  DS_TBenchRecord334: TDictionary<string, TBenchRecord334>;
  DI_TBenchRecord334: TDictionary<Integer, TBenchRecord334>;
  DG_TBenchRecord334: TDictionary<TGUID, TBenchRecord334>;
  DS_TBenchRecord335: TDictionary<string, TBenchRecord335>;
  DI_TBenchRecord335: TDictionary<Integer, TBenchRecord335>;
  DG_TBenchRecord335: TDictionary<TGUID, TBenchRecord335>;
  DS_TBenchRecord336: TDictionary<string, TBenchRecord336>;
  DI_TBenchRecord336: TDictionary<Integer, TBenchRecord336>;
  DG_TBenchRecord336: TDictionary<TGUID, TBenchRecord336>;
  DS_TBenchRecord337: TDictionary<string, TBenchRecord337>;
  DI_TBenchRecord337: TDictionary<Integer, TBenchRecord337>;
  DG_TBenchRecord337: TDictionary<TGUID, TBenchRecord337>;
  DS_TBenchRecord338: TDictionary<string, TBenchRecord338>;
  DI_TBenchRecord338: TDictionary<Integer, TBenchRecord338>;
  DG_TBenchRecord338: TDictionary<TGUID, TBenchRecord338>;
  DS_TBenchRecord339: TDictionary<string, TBenchRecord339>;
  DI_TBenchRecord339: TDictionary<Integer, TBenchRecord339>;
  DG_TBenchRecord339: TDictionary<TGUID, TBenchRecord339>;
  DS_TBenchRecord340: TDictionary<string, TBenchRecord340>;
  DI_TBenchRecord340: TDictionary<Integer, TBenchRecord340>;
  DG_TBenchRecord340: TDictionary<TGUID, TBenchRecord340>;
  DS_TBenchRecord341: TDictionary<string, TBenchRecord341>;
  DI_TBenchRecord341: TDictionary<Integer, TBenchRecord341>;
  DG_TBenchRecord341: TDictionary<TGUID, TBenchRecord341>;
  DS_TBenchRecord342: TDictionary<string, TBenchRecord342>;
  DI_TBenchRecord342: TDictionary<Integer, TBenchRecord342>;
  DG_TBenchRecord342: TDictionary<TGUID, TBenchRecord342>;
  DS_TBenchRecord343: TDictionary<string, TBenchRecord343>;
  DI_TBenchRecord343: TDictionary<Integer, TBenchRecord343>;
  DG_TBenchRecord343: TDictionary<TGUID, TBenchRecord343>;
  DS_TBenchRecord344: TDictionary<string, TBenchRecord344>;
  DI_TBenchRecord344: TDictionary<Integer, TBenchRecord344>;
  DG_TBenchRecord344: TDictionary<TGUID, TBenchRecord344>;
  DS_TBenchRecord345: TDictionary<string, TBenchRecord345>;
  DI_TBenchRecord345: TDictionary<Integer, TBenchRecord345>;
  DG_TBenchRecord345: TDictionary<TGUID, TBenchRecord345>;
  DS_TBenchRecord346: TDictionary<string, TBenchRecord346>;
  DI_TBenchRecord346: TDictionary<Integer, TBenchRecord346>;
  DG_TBenchRecord346: TDictionary<TGUID, TBenchRecord346>;
  DS_TBenchRecord347: TDictionary<string, TBenchRecord347>;
  DI_TBenchRecord347: TDictionary<Integer, TBenchRecord347>;
  DG_TBenchRecord347: TDictionary<TGUID, TBenchRecord347>;
  DS_TBenchRecord348: TDictionary<string, TBenchRecord348>;
  DI_TBenchRecord348: TDictionary<Integer, TBenchRecord348>;
  DG_TBenchRecord348: TDictionary<TGUID, TBenchRecord348>;
  DS_TBenchRecord349: TDictionary<string, TBenchRecord349>;
  DI_TBenchRecord349: TDictionary<Integer, TBenchRecord349>;
  DG_TBenchRecord349: TDictionary<TGUID, TBenchRecord349>;
  DS_TBenchRecord350: TDictionary<string, TBenchRecord350>;
  DI_TBenchRecord350: TDictionary<Integer, TBenchRecord350>;
  DG_TBenchRecord350: TDictionary<TGUID, TBenchRecord350>;
  DS_TBenchRecord351: TDictionary<string, TBenchRecord351>;
  DI_TBenchRecord351: TDictionary<Integer, TBenchRecord351>;
  DG_TBenchRecord351: TDictionary<TGUID, TBenchRecord351>;
  DS_TBenchRecord352: TDictionary<string, TBenchRecord352>;
  DI_TBenchRecord352: TDictionary<Integer, TBenchRecord352>;
  DG_TBenchRecord352: TDictionary<TGUID, TBenchRecord352>;
  DS_TBenchRecord353: TDictionary<string, TBenchRecord353>;
  DI_TBenchRecord353: TDictionary<Integer, TBenchRecord353>;
  DG_TBenchRecord353: TDictionary<TGUID, TBenchRecord353>;
  DS_TBenchRecord354: TDictionary<string, TBenchRecord354>;
  DI_TBenchRecord354: TDictionary<Integer, TBenchRecord354>;
  DG_TBenchRecord354: TDictionary<TGUID, TBenchRecord354>;
  DS_TBenchRecord355: TDictionary<string, TBenchRecord355>;
  DI_TBenchRecord355: TDictionary<Integer, TBenchRecord355>;
  DG_TBenchRecord355: TDictionary<TGUID, TBenchRecord355>;
  DS_TBenchRecord356: TDictionary<string, TBenchRecord356>;
  DI_TBenchRecord356: TDictionary<Integer, TBenchRecord356>;
  DG_TBenchRecord356: TDictionary<TGUID, TBenchRecord356>;
  DS_TBenchRecord357: TDictionary<string, TBenchRecord357>;
  DI_TBenchRecord357: TDictionary<Integer, TBenchRecord357>;
  DG_TBenchRecord357: TDictionary<TGUID, TBenchRecord357>;
  DS_TBenchRecord358: TDictionary<string, TBenchRecord358>;
  DI_TBenchRecord358: TDictionary<Integer, TBenchRecord358>;
  DG_TBenchRecord358: TDictionary<TGUID, TBenchRecord358>;
  DS_TBenchRecord359: TDictionary<string, TBenchRecord359>;
  DI_TBenchRecord359: TDictionary<Integer, TBenchRecord359>;
  DG_TBenchRecord359: TDictionary<TGUID, TBenchRecord359>;
  DS_TBenchRecord360: TDictionary<string, TBenchRecord360>;
  DI_TBenchRecord360: TDictionary<Integer, TBenchRecord360>;
  DG_TBenchRecord360: TDictionary<TGUID, TBenchRecord360>;
  DS_TBenchRecord361: TDictionary<string, TBenchRecord361>;
  DI_TBenchRecord361: TDictionary<Integer, TBenchRecord361>;
  DG_TBenchRecord361: TDictionary<TGUID, TBenchRecord361>;
  DS_TBenchRecord362: TDictionary<string, TBenchRecord362>;
  DI_TBenchRecord362: TDictionary<Integer, TBenchRecord362>;
  DG_TBenchRecord362: TDictionary<TGUID, TBenchRecord362>;
  DS_TBenchRecord363: TDictionary<string, TBenchRecord363>;
  DI_TBenchRecord363: TDictionary<Integer, TBenchRecord363>;
  DG_TBenchRecord363: TDictionary<TGUID, TBenchRecord363>;
  DS_TBenchRecord364: TDictionary<string, TBenchRecord364>;
  DI_TBenchRecord364: TDictionary<Integer, TBenchRecord364>;
  DG_TBenchRecord364: TDictionary<TGUID, TBenchRecord364>;
  DS_TBenchRecord365: TDictionary<string, TBenchRecord365>;
  DI_TBenchRecord365: TDictionary<Integer, TBenchRecord365>;
  DG_TBenchRecord365: TDictionary<TGUID, TBenchRecord365>;
  DS_TBenchRecord366: TDictionary<string, TBenchRecord366>;
  DI_TBenchRecord366: TDictionary<Integer, TBenchRecord366>;
  DG_TBenchRecord366: TDictionary<TGUID, TBenchRecord366>;
  DS_TBenchRecord367: TDictionary<string, TBenchRecord367>;
  DI_TBenchRecord367: TDictionary<Integer, TBenchRecord367>;
  DG_TBenchRecord367: TDictionary<TGUID, TBenchRecord367>;
  DS_TBenchRecord368: TDictionary<string, TBenchRecord368>;
  DI_TBenchRecord368: TDictionary<Integer, TBenchRecord368>;
  DG_TBenchRecord368: TDictionary<TGUID, TBenchRecord368>;
  DS_TBenchRecord369: TDictionary<string, TBenchRecord369>;
  DI_TBenchRecord369: TDictionary<Integer, TBenchRecord369>;
  DG_TBenchRecord369: TDictionary<TGUID, TBenchRecord369>;
  DS_TBenchRecord370: TDictionary<string, TBenchRecord370>;
  DI_TBenchRecord370: TDictionary<Integer, TBenchRecord370>;
  DG_TBenchRecord370: TDictionary<TGUID, TBenchRecord370>;
  DS_TBenchRecord371: TDictionary<string, TBenchRecord371>;
  DI_TBenchRecord371: TDictionary<Integer, TBenchRecord371>;
  DG_TBenchRecord371: TDictionary<TGUID, TBenchRecord371>;
  DS_TBenchRecord372: TDictionary<string, TBenchRecord372>;
  DI_TBenchRecord372: TDictionary<Integer, TBenchRecord372>;
  DG_TBenchRecord372: TDictionary<TGUID, TBenchRecord372>;
  DS_TBenchRecord373: TDictionary<string, TBenchRecord373>;
  DI_TBenchRecord373: TDictionary<Integer, TBenchRecord373>;
  DG_TBenchRecord373: TDictionary<TGUID, TBenchRecord373>;
  DS_TBenchRecord374: TDictionary<string, TBenchRecord374>;
  DI_TBenchRecord374: TDictionary<Integer, TBenchRecord374>;
  DG_TBenchRecord374: TDictionary<TGUID, TBenchRecord374>;
  DS_TBenchRecord375: TDictionary<string, TBenchRecord375>;
  DI_TBenchRecord375: TDictionary<Integer, TBenchRecord375>;
  DG_TBenchRecord375: TDictionary<TGUID, TBenchRecord375>;
  DS_TBenchRecord376: TDictionary<string, TBenchRecord376>;
  DI_TBenchRecord376: TDictionary<Integer, TBenchRecord376>;
  DG_TBenchRecord376: TDictionary<TGUID, TBenchRecord376>;
  DS_TBenchRecord377: TDictionary<string, TBenchRecord377>;
  DI_TBenchRecord377: TDictionary<Integer, TBenchRecord377>;
  DG_TBenchRecord377: TDictionary<TGUID, TBenchRecord377>;
  DS_TBenchRecord378: TDictionary<string, TBenchRecord378>;
  DI_TBenchRecord378: TDictionary<Integer, TBenchRecord378>;
  DG_TBenchRecord378: TDictionary<TGUID, TBenchRecord378>;
  DS_TBenchRecord379: TDictionary<string, TBenchRecord379>;
  DI_TBenchRecord379: TDictionary<Integer, TBenchRecord379>;
  DG_TBenchRecord379: TDictionary<TGUID, TBenchRecord379>;
  DS_TBenchRecord380: TDictionary<string, TBenchRecord380>;
  DI_TBenchRecord380: TDictionary<Integer, TBenchRecord380>;
  DG_TBenchRecord380: TDictionary<TGUID, TBenchRecord380>;
  DS_TBenchRecord381: TDictionary<string, TBenchRecord381>;
  DI_TBenchRecord381: TDictionary<Integer, TBenchRecord381>;
  DG_TBenchRecord381: TDictionary<TGUID, TBenchRecord381>;
  DS_TBenchRecord382: TDictionary<string, TBenchRecord382>;
  DI_TBenchRecord382: TDictionary<Integer, TBenchRecord382>;
  DG_TBenchRecord382: TDictionary<TGUID, TBenchRecord382>;
  DS_TBenchRecord383: TDictionary<string, TBenchRecord383>;
  DI_TBenchRecord383: TDictionary<Integer, TBenchRecord383>;
  DG_TBenchRecord383: TDictionary<TGUID, TBenchRecord383>;
  DS_TBenchRecord384: TDictionary<string, TBenchRecord384>;
  DI_TBenchRecord384: TDictionary<Integer, TBenchRecord384>;
  DG_TBenchRecord384: TDictionary<TGUID, TBenchRecord384>;
  DS_TBenchRecord385: TDictionary<string, TBenchRecord385>;
  DI_TBenchRecord385: TDictionary<Integer, TBenchRecord385>;
  DG_TBenchRecord385: TDictionary<TGUID, TBenchRecord385>;
  DS_TBenchRecord386: TDictionary<string, TBenchRecord386>;
  DI_TBenchRecord386: TDictionary<Integer, TBenchRecord386>;
  DG_TBenchRecord386: TDictionary<TGUID, TBenchRecord386>;
  DS_TBenchRecord387: TDictionary<string, TBenchRecord387>;
  DI_TBenchRecord387: TDictionary<Integer, TBenchRecord387>;
  DG_TBenchRecord387: TDictionary<TGUID, TBenchRecord387>;
  DS_TBenchRecord388: TDictionary<string, TBenchRecord388>;
  DI_TBenchRecord388: TDictionary<Integer, TBenchRecord388>;
  DG_TBenchRecord388: TDictionary<TGUID, TBenchRecord388>;
  DS_TBenchRecord389: TDictionary<string, TBenchRecord389>;
  DI_TBenchRecord389: TDictionary<Integer, TBenchRecord389>;
  DG_TBenchRecord389: TDictionary<TGUID, TBenchRecord389>;
  DS_TBenchRecord390: TDictionary<string, TBenchRecord390>;
  DI_TBenchRecord390: TDictionary<Integer, TBenchRecord390>;
  DG_TBenchRecord390: TDictionary<TGUID, TBenchRecord390>;
  DS_TBenchRecord391: TDictionary<string, TBenchRecord391>;
  DI_TBenchRecord391: TDictionary<Integer, TBenchRecord391>;
  DG_TBenchRecord391: TDictionary<TGUID, TBenchRecord391>;
  DS_TBenchRecord392: TDictionary<string, TBenchRecord392>;
  DI_TBenchRecord392: TDictionary<Integer, TBenchRecord392>;
  DG_TBenchRecord392: TDictionary<TGUID, TBenchRecord392>;
  DS_TBenchRecord393: TDictionary<string, TBenchRecord393>;
  DI_TBenchRecord393: TDictionary<Integer, TBenchRecord393>;
  DG_TBenchRecord393: TDictionary<TGUID, TBenchRecord393>;
  DS_TBenchRecord394: TDictionary<string, TBenchRecord394>;
  DI_TBenchRecord394: TDictionary<Integer, TBenchRecord394>;
  DG_TBenchRecord394: TDictionary<TGUID, TBenchRecord394>;
  DS_TBenchRecord395: TDictionary<string, TBenchRecord395>;
  DI_TBenchRecord395: TDictionary<Integer, TBenchRecord395>;
  DG_TBenchRecord395: TDictionary<TGUID, TBenchRecord395>;
  DS_TBenchRecord396: TDictionary<string, TBenchRecord396>;
  DI_TBenchRecord396: TDictionary<Integer, TBenchRecord396>;
  DG_TBenchRecord396: TDictionary<TGUID, TBenchRecord396>;
  DS_TBenchRecord397: TDictionary<string, TBenchRecord397>;
  DI_TBenchRecord397: TDictionary<Integer, TBenchRecord397>;
  DG_TBenchRecord397: TDictionary<TGUID, TBenchRecord397>;
  DS_TBenchRecord398: TDictionary<string, TBenchRecord398>;
  DI_TBenchRecord398: TDictionary<Integer, TBenchRecord398>;
  DG_TBenchRecord398: TDictionary<TGUID, TBenchRecord398>;
  DS_TBenchRecord399: TDictionary<string, TBenchRecord399>;
  DI_TBenchRecord399: TDictionary<Integer, TBenchRecord399>;
  DG_TBenchRecord399: TDictionary<TGUID, TBenchRecord399>;
  DS_TBenchRecord400: TDictionary<string, TBenchRecord400>;
  DI_TBenchRecord400: TDictionary<Integer, TBenchRecord400>;
  DG_TBenchRecord400: TDictionary<TGUID, TBenchRecord400>;
  DS_TBenchRecord401: TDictionary<string, TBenchRecord401>;
  DI_TBenchRecord401: TDictionary<Integer, TBenchRecord401>;
  DG_TBenchRecord401: TDictionary<TGUID, TBenchRecord401>;
  DS_TBenchRecord402: TDictionary<string, TBenchRecord402>;
  DI_TBenchRecord402: TDictionary<Integer, TBenchRecord402>;
  DG_TBenchRecord402: TDictionary<TGUID, TBenchRecord402>;
  DS_TBenchRecord403: TDictionary<string, TBenchRecord403>;
  DI_TBenchRecord403: TDictionary<Integer, TBenchRecord403>;
  DG_TBenchRecord403: TDictionary<TGUID, TBenchRecord403>;
  DS_TBenchRecord404: TDictionary<string, TBenchRecord404>;
  DI_TBenchRecord404: TDictionary<Integer, TBenchRecord404>;
  DG_TBenchRecord404: TDictionary<TGUID, TBenchRecord404>;
  DS_TBenchRecord405: TDictionary<string, TBenchRecord405>;
  DI_TBenchRecord405: TDictionary<Integer, TBenchRecord405>;
  DG_TBenchRecord405: TDictionary<TGUID, TBenchRecord405>;
  DS_TBenchRecord406: TDictionary<string, TBenchRecord406>;
  DI_TBenchRecord406: TDictionary<Integer, TBenchRecord406>;
  DG_TBenchRecord406: TDictionary<TGUID, TBenchRecord406>;
  DS_TBenchRecord407: TDictionary<string, TBenchRecord407>;
  DI_TBenchRecord407: TDictionary<Integer, TBenchRecord407>;
  DG_TBenchRecord407: TDictionary<TGUID, TBenchRecord407>;
  DS_TBenchRecord408: TDictionary<string, TBenchRecord408>;
  DI_TBenchRecord408: TDictionary<Integer, TBenchRecord408>;
  DG_TBenchRecord408: TDictionary<TGUID, TBenchRecord408>;
  DS_TBenchRecord409: TDictionary<string, TBenchRecord409>;
  DI_TBenchRecord409: TDictionary<Integer, TBenchRecord409>;
  DG_TBenchRecord409: TDictionary<TGUID, TBenchRecord409>;
  DS_TBenchRecord410: TDictionary<string, TBenchRecord410>;
  DI_TBenchRecord410: TDictionary<Integer, TBenchRecord410>;
  DG_TBenchRecord410: TDictionary<TGUID, TBenchRecord410>;
  DS_TBenchRecord411: TDictionary<string, TBenchRecord411>;
  DI_TBenchRecord411: TDictionary<Integer, TBenchRecord411>;
  DG_TBenchRecord411: TDictionary<TGUID, TBenchRecord411>;
  DS_TBenchRecord412: TDictionary<string, TBenchRecord412>;
  DI_TBenchRecord412: TDictionary<Integer, TBenchRecord412>;
  DG_TBenchRecord412: TDictionary<TGUID, TBenchRecord412>;
  DS_TBenchRecord413: TDictionary<string, TBenchRecord413>;
  DI_TBenchRecord413: TDictionary<Integer, TBenchRecord413>;
  DG_TBenchRecord413: TDictionary<TGUID, TBenchRecord413>;
  DS_TBenchRecord414: TDictionary<string, TBenchRecord414>;
  DI_TBenchRecord414: TDictionary<Integer, TBenchRecord414>;
  DG_TBenchRecord414: TDictionary<TGUID, TBenchRecord414>;
  DS_TBenchRecord415: TDictionary<string, TBenchRecord415>;
  DI_TBenchRecord415: TDictionary<Integer, TBenchRecord415>;
  DG_TBenchRecord415: TDictionary<TGUID, TBenchRecord415>;
  DS_TBenchRecord416: TDictionary<string, TBenchRecord416>;
  DI_TBenchRecord416: TDictionary<Integer, TBenchRecord416>;
  DG_TBenchRecord416: TDictionary<TGUID, TBenchRecord416>;
  DS_TBenchRecord417: TDictionary<string, TBenchRecord417>;
  DI_TBenchRecord417: TDictionary<Integer, TBenchRecord417>;
  DG_TBenchRecord417: TDictionary<TGUID, TBenchRecord417>;
  DS_TBenchRecord418: TDictionary<string, TBenchRecord418>;
  DI_TBenchRecord418: TDictionary<Integer, TBenchRecord418>;
  DG_TBenchRecord418: TDictionary<TGUID, TBenchRecord418>;
  DS_TBenchRecord419: TDictionary<string, TBenchRecord419>;
  DI_TBenchRecord419: TDictionary<Integer, TBenchRecord419>;
  DG_TBenchRecord419: TDictionary<TGUID, TBenchRecord419>;
  DS_TBenchRecord420: TDictionary<string, TBenchRecord420>;
  DI_TBenchRecord420: TDictionary<Integer, TBenchRecord420>;
  DG_TBenchRecord420: TDictionary<TGUID, TBenchRecord420>;
  DS_TBenchRecord421: TDictionary<string, TBenchRecord421>;
  DI_TBenchRecord421: TDictionary<Integer, TBenchRecord421>;
  DG_TBenchRecord421: TDictionary<TGUID, TBenchRecord421>;
  DS_TBenchRecord422: TDictionary<string, TBenchRecord422>;
  DI_TBenchRecord422: TDictionary<Integer, TBenchRecord422>;
  DG_TBenchRecord422: TDictionary<TGUID, TBenchRecord422>;
  DS_TBenchRecord423: TDictionary<string, TBenchRecord423>;
  DI_TBenchRecord423: TDictionary<Integer, TBenchRecord423>;
  DG_TBenchRecord423: TDictionary<TGUID, TBenchRecord423>;
  DS_TBenchRecord424: TDictionary<string, TBenchRecord424>;
  DI_TBenchRecord424: TDictionary<Integer, TBenchRecord424>;
  DG_TBenchRecord424: TDictionary<TGUID, TBenchRecord424>;
  DS_TBenchRecord425: TDictionary<string, TBenchRecord425>;
  DI_TBenchRecord425: TDictionary<Integer, TBenchRecord425>;
  DG_TBenchRecord425: TDictionary<TGUID, TBenchRecord425>;
  DS_TBenchRecord426: TDictionary<string, TBenchRecord426>;
  DI_TBenchRecord426: TDictionary<Integer, TBenchRecord426>;
  DG_TBenchRecord426: TDictionary<TGUID, TBenchRecord426>;
  DS_TBenchRecord427: TDictionary<string, TBenchRecord427>;
  DI_TBenchRecord427: TDictionary<Integer, TBenchRecord427>;
  DG_TBenchRecord427: TDictionary<TGUID, TBenchRecord427>;
  DS_TBenchRecord428: TDictionary<string, TBenchRecord428>;
  DI_TBenchRecord428: TDictionary<Integer, TBenchRecord428>;
  DG_TBenchRecord428: TDictionary<TGUID, TBenchRecord428>;
  DS_TBenchRecord429: TDictionary<string, TBenchRecord429>;
  DI_TBenchRecord429: TDictionary<Integer, TBenchRecord429>;
  DG_TBenchRecord429: TDictionary<TGUID, TBenchRecord429>;
  DS_TBenchRecord430: TDictionary<string, TBenchRecord430>;
  DI_TBenchRecord430: TDictionary<Integer, TBenchRecord430>;
  DG_TBenchRecord430: TDictionary<TGUID, TBenchRecord430>;
  DS_TBenchRecord431: TDictionary<string, TBenchRecord431>;
  DI_TBenchRecord431: TDictionary<Integer, TBenchRecord431>;
  DG_TBenchRecord431: TDictionary<TGUID, TBenchRecord431>;
  DS_TBenchRecord432: TDictionary<string, TBenchRecord432>;
  DI_TBenchRecord432: TDictionary<Integer, TBenchRecord432>;
  DG_TBenchRecord432: TDictionary<TGUID, TBenchRecord432>;
  DS_TBenchRecord433: TDictionary<string, TBenchRecord433>;
  DI_TBenchRecord433: TDictionary<Integer, TBenchRecord433>;
  DG_TBenchRecord433: TDictionary<TGUID, TBenchRecord433>;
  DS_TBenchRecord434: TDictionary<string, TBenchRecord434>;
  DI_TBenchRecord434: TDictionary<Integer, TBenchRecord434>;
  DG_TBenchRecord434: TDictionary<TGUID, TBenchRecord434>;
  DS_TBenchRecord435: TDictionary<string, TBenchRecord435>;
  DI_TBenchRecord435: TDictionary<Integer, TBenchRecord435>;
  DG_TBenchRecord435: TDictionary<TGUID, TBenchRecord435>;
  DS_TBenchRecord436: TDictionary<string, TBenchRecord436>;
  DI_TBenchRecord436: TDictionary<Integer, TBenchRecord436>;
  DG_TBenchRecord436: TDictionary<TGUID, TBenchRecord436>;
  DS_TBenchRecord437: TDictionary<string, TBenchRecord437>;
  DI_TBenchRecord437: TDictionary<Integer, TBenchRecord437>;
  DG_TBenchRecord437: TDictionary<TGUID, TBenchRecord437>;
  DS_TBenchRecord438: TDictionary<string, TBenchRecord438>;
  DI_TBenchRecord438: TDictionary<Integer, TBenchRecord438>;
  DG_TBenchRecord438: TDictionary<TGUID, TBenchRecord438>;
  DS_TBenchRecord439: TDictionary<string, TBenchRecord439>;
  DI_TBenchRecord439: TDictionary<Integer, TBenchRecord439>;
  DG_TBenchRecord439: TDictionary<TGUID, TBenchRecord439>;
  DS_TBenchRecord440: TDictionary<string, TBenchRecord440>;
  DI_TBenchRecord440: TDictionary<Integer, TBenchRecord440>;
  DG_TBenchRecord440: TDictionary<TGUID, TBenchRecord440>;
  DS_TBenchRecord441: TDictionary<string, TBenchRecord441>;
  DI_TBenchRecord441: TDictionary<Integer, TBenchRecord441>;
  DG_TBenchRecord441: TDictionary<TGUID, TBenchRecord441>;
  DS_TBenchRecord442: TDictionary<string, TBenchRecord442>;
  DI_TBenchRecord442: TDictionary<Integer, TBenchRecord442>;
  DG_TBenchRecord442: TDictionary<TGUID, TBenchRecord442>;
  DS_TBenchRecord443: TDictionary<string, TBenchRecord443>;
  DI_TBenchRecord443: TDictionary<Integer, TBenchRecord443>;
  DG_TBenchRecord443: TDictionary<TGUID, TBenchRecord443>;
  DS_TBenchRecord444: TDictionary<string, TBenchRecord444>;
  DI_TBenchRecord444: TDictionary<Integer, TBenchRecord444>;
  DG_TBenchRecord444: TDictionary<TGUID, TBenchRecord444>;
  DS_TBenchRecord445: TDictionary<string, TBenchRecord445>;
  DI_TBenchRecord445: TDictionary<Integer, TBenchRecord445>;
  DG_TBenchRecord445: TDictionary<TGUID, TBenchRecord445>;
  DS_TBenchRecord446: TDictionary<string, TBenchRecord446>;
  DI_TBenchRecord446: TDictionary<Integer, TBenchRecord446>;
  DG_TBenchRecord446: TDictionary<TGUID, TBenchRecord446>;
  DS_TBenchRecord447: TDictionary<string, TBenchRecord447>;
  DI_TBenchRecord447: TDictionary<Integer, TBenchRecord447>;
  DG_TBenchRecord447: TDictionary<TGUID, TBenchRecord447>;
  DS_TBenchRecord448: TDictionary<string, TBenchRecord448>;
  DI_TBenchRecord448: TDictionary<Integer, TBenchRecord448>;
  DG_TBenchRecord448: TDictionary<TGUID, TBenchRecord448>;
  DS_TBenchRecord449: TDictionary<string, TBenchRecord449>;
  DI_TBenchRecord449: TDictionary<Integer, TBenchRecord449>;
  DG_TBenchRecord449: TDictionary<TGUID, TBenchRecord449>;
  DS_TBenchRecord450: TDictionary<string, TBenchRecord450>;
  DI_TBenchRecord450: TDictionary<Integer, TBenchRecord450>;
  DG_TBenchRecord450: TDictionary<TGUID, TBenchRecord450>;
  DS_TBenchRecord451: TDictionary<string, TBenchRecord451>;
  DI_TBenchRecord451: TDictionary<Integer, TBenchRecord451>;
  DG_TBenchRecord451: TDictionary<TGUID, TBenchRecord451>;
  DS_TBenchRecord452: TDictionary<string, TBenchRecord452>;
  DI_TBenchRecord452: TDictionary<Integer, TBenchRecord452>;
  DG_TBenchRecord452: TDictionary<TGUID, TBenchRecord452>;
  DS_TBenchRecord453: TDictionary<string, TBenchRecord453>;
  DI_TBenchRecord453: TDictionary<Integer, TBenchRecord453>;
  DG_TBenchRecord453: TDictionary<TGUID, TBenchRecord453>;
  DS_TBenchRecord454: TDictionary<string, TBenchRecord454>;
  DI_TBenchRecord454: TDictionary<Integer, TBenchRecord454>;
  DG_TBenchRecord454: TDictionary<TGUID, TBenchRecord454>;
  DS_TBenchRecord455: TDictionary<string, TBenchRecord455>;
  DI_TBenchRecord455: TDictionary<Integer, TBenchRecord455>;
  DG_TBenchRecord455: TDictionary<TGUID, TBenchRecord455>;
  DS_TBenchRecord456: TDictionary<string, TBenchRecord456>;
  DI_TBenchRecord456: TDictionary<Integer, TBenchRecord456>;
  DG_TBenchRecord456: TDictionary<TGUID, TBenchRecord456>;
  DS_TBenchRecord457: TDictionary<string, TBenchRecord457>;
  DI_TBenchRecord457: TDictionary<Integer, TBenchRecord457>;
  DG_TBenchRecord457: TDictionary<TGUID, TBenchRecord457>;
  DS_TBenchRecord458: TDictionary<string, TBenchRecord458>;
  DI_TBenchRecord458: TDictionary<Integer, TBenchRecord458>;
  DG_TBenchRecord458: TDictionary<TGUID, TBenchRecord458>;
  DS_TBenchRecord459: TDictionary<string, TBenchRecord459>;
  DI_TBenchRecord459: TDictionary<Integer, TBenchRecord459>;
  DG_TBenchRecord459: TDictionary<TGUID, TBenchRecord459>;
  DS_TBenchRecord460: TDictionary<string, TBenchRecord460>;
  DI_TBenchRecord460: TDictionary<Integer, TBenchRecord460>;
  DG_TBenchRecord460: TDictionary<TGUID, TBenchRecord460>;
  DS_TBenchRecord461: TDictionary<string, TBenchRecord461>;
  DI_TBenchRecord461: TDictionary<Integer, TBenchRecord461>;
  DG_TBenchRecord461: TDictionary<TGUID, TBenchRecord461>;
  DS_TBenchRecord462: TDictionary<string, TBenchRecord462>;
  DI_TBenchRecord462: TDictionary<Integer, TBenchRecord462>;
  DG_TBenchRecord462: TDictionary<TGUID, TBenchRecord462>;
  DS_TBenchRecord463: TDictionary<string, TBenchRecord463>;
  DI_TBenchRecord463: TDictionary<Integer, TBenchRecord463>;
  DG_TBenchRecord463: TDictionary<TGUID, TBenchRecord463>;
  DS_TBenchRecord464: TDictionary<string, TBenchRecord464>;
  DI_TBenchRecord464: TDictionary<Integer, TBenchRecord464>;
  DG_TBenchRecord464: TDictionary<TGUID, TBenchRecord464>;
  DS_TBenchRecord465: TDictionary<string, TBenchRecord465>;
  DI_TBenchRecord465: TDictionary<Integer, TBenchRecord465>;
  DG_TBenchRecord465: TDictionary<TGUID, TBenchRecord465>;
  DS_TBenchRecord466: TDictionary<string, TBenchRecord466>;
  DI_TBenchRecord466: TDictionary<Integer, TBenchRecord466>;
  DG_TBenchRecord466: TDictionary<TGUID, TBenchRecord466>;
  DS_TBenchRecord467: TDictionary<string, TBenchRecord467>;
  DI_TBenchRecord467: TDictionary<Integer, TBenchRecord467>;
  DG_TBenchRecord467: TDictionary<TGUID, TBenchRecord467>;
  DS_TBenchRecord468: TDictionary<string, TBenchRecord468>;
  DI_TBenchRecord468: TDictionary<Integer, TBenchRecord468>;
  DG_TBenchRecord468: TDictionary<TGUID, TBenchRecord468>;
  DS_TBenchRecord469: TDictionary<string, TBenchRecord469>;
  DI_TBenchRecord469: TDictionary<Integer, TBenchRecord469>;
  DG_TBenchRecord469: TDictionary<TGUID, TBenchRecord469>;
  DS_TBenchRecord470: TDictionary<string, TBenchRecord470>;
  DI_TBenchRecord470: TDictionary<Integer, TBenchRecord470>;
  DG_TBenchRecord470: TDictionary<TGUID, TBenchRecord470>;
  DS_TBenchRecord471: TDictionary<string, TBenchRecord471>;
  DI_TBenchRecord471: TDictionary<Integer, TBenchRecord471>;
  DG_TBenchRecord471: TDictionary<TGUID, TBenchRecord471>;
  DS_TBenchRecord472: TDictionary<string, TBenchRecord472>;
  DI_TBenchRecord472: TDictionary<Integer, TBenchRecord472>;
  DG_TBenchRecord472: TDictionary<TGUID, TBenchRecord472>;
  DS_TBenchRecord473: TDictionary<string, TBenchRecord473>;
  DI_TBenchRecord473: TDictionary<Integer, TBenchRecord473>;
  DG_TBenchRecord473: TDictionary<TGUID, TBenchRecord473>;
  DS_TBenchRecord474: TDictionary<string, TBenchRecord474>;
  DI_TBenchRecord474: TDictionary<Integer, TBenchRecord474>;
  DG_TBenchRecord474: TDictionary<TGUID, TBenchRecord474>;
  DS_TBenchRecord475: TDictionary<string, TBenchRecord475>;
  DI_TBenchRecord475: TDictionary<Integer, TBenchRecord475>;
  DG_TBenchRecord475: TDictionary<TGUID, TBenchRecord475>;
  DS_TBenchRecord476: TDictionary<string, TBenchRecord476>;
  DI_TBenchRecord476: TDictionary<Integer, TBenchRecord476>;
  DG_TBenchRecord476: TDictionary<TGUID, TBenchRecord476>;
  DS_TBenchRecord477: TDictionary<string, TBenchRecord477>;
  DI_TBenchRecord477: TDictionary<Integer, TBenchRecord477>;
  DG_TBenchRecord477: TDictionary<TGUID, TBenchRecord477>;
  DS_TBenchRecord478: TDictionary<string, TBenchRecord478>;
  DI_TBenchRecord478: TDictionary<Integer, TBenchRecord478>;
  DG_TBenchRecord478: TDictionary<TGUID, TBenchRecord478>;
  DS_TBenchRecord479: TDictionary<string, TBenchRecord479>;
  DI_TBenchRecord479: TDictionary<Integer, TBenchRecord479>;
  DG_TBenchRecord479: TDictionary<TGUID, TBenchRecord479>;
  DS_TBenchRecord480: TDictionary<string, TBenchRecord480>;
  DI_TBenchRecord480: TDictionary<Integer, TBenchRecord480>;
  DG_TBenchRecord480: TDictionary<TGUID, TBenchRecord480>;
  DS_TBenchRecord481: TDictionary<string, TBenchRecord481>;
  DI_TBenchRecord481: TDictionary<Integer, TBenchRecord481>;
  DG_TBenchRecord481: TDictionary<TGUID, TBenchRecord481>;
  DS_TBenchRecord482: TDictionary<string, TBenchRecord482>;
  DI_TBenchRecord482: TDictionary<Integer, TBenchRecord482>;
  DG_TBenchRecord482: TDictionary<TGUID, TBenchRecord482>;
  DS_TBenchRecord483: TDictionary<string, TBenchRecord483>;
  DI_TBenchRecord483: TDictionary<Integer, TBenchRecord483>;
  DG_TBenchRecord483: TDictionary<TGUID, TBenchRecord483>;
  DS_TBenchRecord484: TDictionary<string, TBenchRecord484>;
  DI_TBenchRecord484: TDictionary<Integer, TBenchRecord484>;
  DG_TBenchRecord484: TDictionary<TGUID, TBenchRecord484>;
  DS_TBenchRecord485: TDictionary<string, TBenchRecord485>;
  DI_TBenchRecord485: TDictionary<Integer, TBenchRecord485>;
  DG_TBenchRecord485: TDictionary<TGUID, TBenchRecord485>;
  DS_TBenchRecord486: TDictionary<string, TBenchRecord486>;
  DI_TBenchRecord486: TDictionary<Integer, TBenchRecord486>;
  DG_TBenchRecord486: TDictionary<TGUID, TBenchRecord486>;
  DS_TBenchRecord487: TDictionary<string, TBenchRecord487>;
  DI_TBenchRecord487: TDictionary<Integer, TBenchRecord487>;
  DG_TBenchRecord487: TDictionary<TGUID, TBenchRecord487>;
  DS_TBenchRecord488: TDictionary<string, TBenchRecord488>;
  DI_TBenchRecord488: TDictionary<Integer, TBenchRecord488>;
  DG_TBenchRecord488: TDictionary<TGUID, TBenchRecord488>;
  DS_TBenchRecord489: TDictionary<string, TBenchRecord489>;
  DI_TBenchRecord489: TDictionary<Integer, TBenchRecord489>;
  DG_TBenchRecord489: TDictionary<TGUID, TBenchRecord489>;
  DS_TBenchRecord490: TDictionary<string, TBenchRecord490>;
  DI_TBenchRecord490: TDictionary<Integer, TBenchRecord490>;
  DG_TBenchRecord490: TDictionary<TGUID, TBenchRecord490>;
  DS_TBenchRecord491: TDictionary<string, TBenchRecord491>;
  DI_TBenchRecord491: TDictionary<Integer, TBenchRecord491>;
  DG_TBenchRecord491: TDictionary<TGUID, TBenchRecord491>;
  DS_TBenchRecord492: TDictionary<string, TBenchRecord492>;
  DI_TBenchRecord492: TDictionary<Integer, TBenchRecord492>;
  DG_TBenchRecord492: TDictionary<TGUID, TBenchRecord492>;
  DS_TBenchRecord493: TDictionary<string, TBenchRecord493>;
  DI_TBenchRecord493: TDictionary<Integer, TBenchRecord493>;
  DG_TBenchRecord493: TDictionary<TGUID, TBenchRecord493>;
  DS_TBenchRecord494: TDictionary<string, TBenchRecord494>;
  DI_TBenchRecord494: TDictionary<Integer, TBenchRecord494>;
  DG_TBenchRecord494: TDictionary<TGUID, TBenchRecord494>;
  DS_TBenchRecord495: TDictionary<string, TBenchRecord495>;
  DI_TBenchRecord495: TDictionary<Integer, TBenchRecord495>;
  DG_TBenchRecord495: TDictionary<TGUID, TBenchRecord495>;
  DS_TBenchRecord496: TDictionary<string, TBenchRecord496>;
  DI_TBenchRecord496: TDictionary<Integer, TBenchRecord496>;
  DG_TBenchRecord496: TDictionary<TGUID, TBenchRecord496>;
  DS_TBenchRecord497: TDictionary<string, TBenchRecord497>;
  DI_TBenchRecord497: TDictionary<Integer, TBenchRecord497>;
  DG_TBenchRecord497: TDictionary<TGUID, TBenchRecord497>;
  DS_TBenchRecord498: TDictionary<string, TBenchRecord498>;
  DI_TBenchRecord498: TDictionary<Integer, TBenchRecord498>;
  DG_TBenchRecord498: TDictionary<TGUID, TBenchRecord498>;
  DS_TBenchRecord499: TDictionary<string, TBenchRecord499>;
  DI_TBenchRecord499: TDictionary<Integer, TBenchRecord499>;
  DG_TBenchRecord499: TDictionary<TGUID, TBenchRecord499>;
  DS_TBenchRecord500: TDictionary<string, TBenchRecord500>;
  DI_TBenchRecord500: TDictionary<Integer, TBenchRecord500>;
  DG_TBenchRecord500: TDictionary<TGUID, TBenchRecord500>;
begin
  DS_TBenchRecord001 := TDictionary<string, TBenchRecord001>.Create;
  try
    DS_TBenchRecord001.Add('key', Default(TBenchRecord001));
  finally
    DS_TBenchRecord001.Free;
  end;
  DI_TBenchRecord001 := TDictionary<Integer, TBenchRecord001>.Create;
  try
    DI_TBenchRecord001.Add(1, Default(TBenchRecord001));
  finally
    DI_TBenchRecord001.Free;
  end;
  DG_TBenchRecord001 := TDictionary<TGUID, TBenchRecord001>.Create;
  try
    DG_TBenchRecord001.Add(TGUID.Empty, Default(TBenchRecord001));
  finally
    DG_TBenchRecord001.Free;
  end;
  DS_TBenchRecord002 := TDictionary<string, TBenchRecord002>.Create;
  try
    DS_TBenchRecord002.Add('key', Default(TBenchRecord002));
  finally
    DS_TBenchRecord002.Free;
  end;
  DI_TBenchRecord002 := TDictionary<Integer, TBenchRecord002>.Create;
  try
    DI_TBenchRecord002.Add(1, Default(TBenchRecord002));
  finally
    DI_TBenchRecord002.Free;
  end;
  DG_TBenchRecord002 := TDictionary<TGUID, TBenchRecord002>.Create;
  try
    DG_TBenchRecord002.Add(TGUID.Empty, Default(TBenchRecord002));
  finally
    DG_TBenchRecord002.Free;
  end;
  DS_TBenchRecord003 := TDictionary<string, TBenchRecord003>.Create;
  try
    DS_TBenchRecord003.Add('key', Default(TBenchRecord003));
  finally
    DS_TBenchRecord003.Free;
  end;
  DI_TBenchRecord003 := TDictionary<Integer, TBenchRecord003>.Create;
  try
    DI_TBenchRecord003.Add(1, Default(TBenchRecord003));
  finally
    DI_TBenchRecord003.Free;
  end;
  DG_TBenchRecord003 := TDictionary<TGUID, TBenchRecord003>.Create;
  try
    DG_TBenchRecord003.Add(TGUID.Empty, Default(TBenchRecord003));
  finally
    DG_TBenchRecord003.Free;
  end;
  DS_TBenchRecord004 := TDictionary<string, TBenchRecord004>.Create;
  try
    DS_TBenchRecord004.Add('key', Default(TBenchRecord004));
  finally
    DS_TBenchRecord004.Free;
  end;
  DI_TBenchRecord004 := TDictionary<Integer, TBenchRecord004>.Create;
  try
    DI_TBenchRecord004.Add(1, Default(TBenchRecord004));
  finally
    DI_TBenchRecord004.Free;
  end;
  DG_TBenchRecord004 := TDictionary<TGUID, TBenchRecord004>.Create;
  try
    DG_TBenchRecord004.Add(TGUID.Empty, Default(TBenchRecord004));
  finally
    DG_TBenchRecord004.Free;
  end;
  DS_TBenchRecord005 := TDictionary<string, TBenchRecord005>.Create;
  try
    DS_TBenchRecord005.Add('key', Default(TBenchRecord005));
  finally
    DS_TBenchRecord005.Free;
  end;
  DI_TBenchRecord005 := TDictionary<Integer, TBenchRecord005>.Create;
  try
    DI_TBenchRecord005.Add(1, Default(TBenchRecord005));
  finally
    DI_TBenchRecord005.Free;
  end;
  DG_TBenchRecord005 := TDictionary<TGUID, TBenchRecord005>.Create;
  try
    DG_TBenchRecord005.Add(TGUID.Empty, Default(TBenchRecord005));
  finally
    DG_TBenchRecord005.Free;
  end;
  DS_TBenchRecord006 := TDictionary<string, TBenchRecord006>.Create;
  try
    DS_TBenchRecord006.Add('key', Default(TBenchRecord006));
  finally
    DS_TBenchRecord006.Free;
  end;
  DI_TBenchRecord006 := TDictionary<Integer, TBenchRecord006>.Create;
  try
    DI_TBenchRecord006.Add(1, Default(TBenchRecord006));
  finally
    DI_TBenchRecord006.Free;
  end;
  DG_TBenchRecord006 := TDictionary<TGUID, TBenchRecord006>.Create;
  try
    DG_TBenchRecord006.Add(TGUID.Empty, Default(TBenchRecord006));
  finally
    DG_TBenchRecord006.Free;
  end;
  DS_TBenchRecord007 := TDictionary<string, TBenchRecord007>.Create;
  try
    DS_TBenchRecord007.Add('key', Default(TBenchRecord007));
  finally
    DS_TBenchRecord007.Free;
  end;
  DI_TBenchRecord007 := TDictionary<Integer, TBenchRecord007>.Create;
  try
    DI_TBenchRecord007.Add(1, Default(TBenchRecord007));
  finally
    DI_TBenchRecord007.Free;
  end;
  DG_TBenchRecord007 := TDictionary<TGUID, TBenchRecord007>.Create;
  try
    DG_TBenchRecord007.Add(TGUID.Empty, Default(TBenchRecord007));
  finally
    DG_TBenchRecord007.Free;
  end;
  DS_TBenchRecord008 := TDictionary<string, TBenchRecord008>.Create;
  try
    DS_TBenchRecord008.Add('key', Default(TBenchRecord008));
  finally
    DS_TBenchRecord008.Free;
  end;
  DI_TBenchRecord008 := TDictionary<Integer, TBenchRecord008>.Create;
  try
    DI_TBenchRecord008.Add(1, Default(TBenchRecord008));
  finally
    DI_TBenchRecord008.Free;
  end;
  DG_TBenchRecord008 := TDictionary<TGUID, TBenchRecord008>.Create;
  try
    DG_TBenchRecord008.Add(TGUID.Empty, Default(TBenchRecord008));
  finally
    DG_TBenchRecord008.Free;
  end;
  DS_TBenchRecord009 := TDictionary<string, TBenchRecord009>.Create;
  try
    DS_TBenchRecord009.Add('key', Default(TBenchRecord009));
  finally
    DS_TBenchRecord009.Free;
  end;
  DI_TBenchRecord009 := TDictionary<Integer, TBenchRecord009>.Create;
  try
    DI_TBenchRecord009.Add(1, Default(TBenchRecord009));
  finally
    DI_TBenchRecord009.Free;
  end;
  DG_TBenchRecord009 := TDictionary<TGUID, TBenchRecord009>.Create;
  try
    DG_TBenchRecord009.Add(TGUID.Empty, Default(TBenchRecord009));
  finally
    DG_TBenchRecord009.Free;
  end;
  DS_TBenchRecord010 := TDictionary<string, TBenchRecord010>.Create;
  try
    DS_TBenchRecord010.Add('key', Default(TBenchRecord010));
  finally
    DS_TBenchRecord010.Free;
  end;
  DI_TBenchRecord010 := TDictionary<Integer, TBenchRecord010>.Create;
  try
    DI_TBenchRecord010.Add(1, Default(TBenchRecord010));
  finally
    DI_TBenchRecord010.Free;
  end;
  DG_TBenchRecord010 := TDictionary<TGUID, TBenchRecord010>.Create;
  try
    DG_TBenchRecord010.Add(TGUID.Empty, Default(TBenchRecord010));
  finally
    DG_TBenchRecord010.Free;
  end;
  DS_TBenchRecord011 := TDictionary<string, TBenchRecord011>.Create;
  try
    DS_TBenchRecord011.Add('key', Default(TBenchRecord011));
  finally
    DS_TBenchRecord011.Free;
  end;
  DI_TBenchRecord011 := TDictionary<Integer, TBenchRecord011>.Create;
  try
    DI_TBenchRecord011.Add(1, Default(TBenchRecord011));
  finally
    DI_TBenchRecord011.Free;
  end;
  DG_TBenchRecord011 := TDictionary<TGUID, TBenchRecord011>.Create;
  try
    DG_TBenchRecord011.Add(TGUID.Empty, Default(TBenchRecord011));
  finally
    DG_TBenchRecord011.Free;
  end;
  DS_TBenchRecord012 := TDictionary<string, TBenchRecord012>.Create;
  try
    DS_TBenchRecord012.Add('key', Default(TBenchRecord012));
  finally
    DS_TBenchRecord012.Free;
  end;
  DI_TBenchRecord012 := TDictionary<Integer, TBenchRecord012>.Create;
  try
    DI_TBenchRecord012.Add(1, Default(TBenchRecord012));
  finally
    DI_TBenchRecord012.Free;
  end;
  DG_TBenchRecord012 := TDictionary<TGUID, TBenchRecord012>.Create;
  try
    DG_TBenchRecord012.Add(TGUID.Empty, Default(TBenchRecord012));
  finally
    DG_TBenchRecord012.Free;
  end;
  DS_TBenchRecord013 := TDictionary<string, TBenchRecord013>.Create;
  try
    DS_TBenchRecord013.Add('key', Default(TBenchRecord013));
  finally
    DS_TBenchRecord013.Free;
  end;
  DI_TBenchRecord013 := TDictionary<Integer, TBenchRecord013>.Create;
  try
    DI_TBenchRecord013.Add(1, Default(TBenchRecord013));
  finally
    DI_TBenchRecord013.Free;
  end;
  DG_TBenchRecord013 := TDictionary<TGUID, TBenchRecord013>.Create;
  try
    DG_TBenchRecord013.Add(TGUID.Empty, Default(TBenchRecord013));
  finally
    DG_TBenchRecord013.Free;
  end;
  DS_TBenchRecord014 := TDictionary<string, TBenchRecord014>.Create;
  try
    DS_TBenchRecord014.Add('key', Default(TBenchRecord014));
  finally
    DS_TBenchRecord014.Free;
  end;
  DI_TBenchRecord014 := TDictionary<Integer, TBenchRecord014>.Create;
  try
    DI_TBenchRecord014.Add(1, Default(TBenchRecord014));
  finally
    DI_TBenchRecord014.Free;
  end;
  DG_TBenchRecord014 := TDictionary<TGUID, TBenchRecord014>.Create;
  try
    DG_TBenchRecord014.Add(TGUID.Empty, Default(TBenchRecord014));
  finally
    DG_TBenchRecord014.Free;
  end;
  DS_TBenchRecord015 := TDictionary<string, TBenchRecord015>.Create;
  try
    DS_TBenchRecord015.Add('key', Default(TBenchRecord015));
  finally
    DS_TBenchRecord015.Free;
  end;
  DI_TBenchRecord015 := TDictionary<Integer, TBenchRecord015>.Create;
  try
    DI_TBenchRecord015.Add(1, Default(TBenchRecord015));
  finally
    DI_TBenchRecord015.Free;
  end;
  DG_TBenchRecord015 := TDictionary<TGUID, TBenchRecord015>.Create;
  try
    DG_TBenchRecord015.Add(TGUID.Empty, Default(TBenchRecord015));
  finally
    DG_TBenchRecord015.Free;
  end;
  DS_TBenchRecord016 := TDictionary<string, TBenchRecord016>.Create;
  try
    DS_TBenchRecord016.Add('key', Default(TBenchRecord016));
  finally
    DS_TBenchRecord016.Free;
  end;
  DI_TBenchRecord016 := TDictionary<Integer, TBenchRecord016>.Create;
  try
    DI_TBenchRecord016.Add(1, Default(TBenchRecord016));
  finally
    DI_TBenchRecord016.Free;
  end;
  DG_TBenchRecord016 := TDictionary<TGUID, TBenchRecord016>.Create;
  try
    DG_TBenchRecord016.Add(TGUID.Empty, Default(TBenchRecord016));
  finally
    DG_TBenchRecord016.Free;
  end;
  DS_TBenchRecord017 := TDictionary<string, TBenchRecord017>.Create;
  try
    DS_TBenchRecord017.Add('key', Default(TBenchRecord017));
  finally
    DS_TBenchRecord017.Free;
  end;
  DI_TBenchRecord017 := TDictionary<Integer, TBenchRecord017>.Create;
  try
    DI_TBenchRecord017.Add(1, Default(TBenchRecord017));
  finally
    DI_TBenchRecord017.Free;
  end;
  DG_TBenchRecord017 := TDictionary<TGUID, TBenchRecord017>.Create;
  try
    DG_TBenchRecord017.Add(TGUID.Empty, Default(TBenchRecord017));
  finally
    DG_TBenchRecord017.Free;
  end;
  DS_TBenchRecord018 := TDictionary<string, TBenchRecord018>.Create;
  try
    DS_TBenchRecord018.Add('key', Default(TBenchRecord018));
  finally
    DS_TBenchRecord018.Free;
  end;
  DI_TBenchRecord018 := TDictionary<Integer, TBenchRecord018>.Create;
  try
    DI_TBenchRecord018.Add(1, Default(TBenchRecord018));
  finally
    DI_TBenchRecord018.Free;
  end;
  DG_TBenchRecord018 := TDictionary<TGUID, TBenchRecord018>.Create;
  try
    DG_TBenchRecord018.Add(TGUID.Empty, Default(TBenchRecord018));
  finally
    DG_TBenchRecord018.Free;
  end;
  DS_TBenchRecord019 := TDictionary<string, TBenchRecord019>.Create;
  try
    DS_TBenchRecord019.Add('key', Default(TBenchRecord019));
  finally
    DS_TBenchRecord019.Free;
  end;
  DI_TBenchRecord019 := TDictionary<Integer, TBenchRecord019>.Create;
  try
    DI_TBenchRecord019.Add(1, Default(TBenchRecord019));
  finally
    DI_TBenchRecord019.Free;
  end;
  DG_TBenchRecord019 := TDictionary<TGUID, TBenchRecord019>.Create;
  try
    DG_TBenchRecord019.Add(TGUID.Empty, Default(TBenchRecord019));
  finally
    DG_TBenchRecord019.Free;
  end;
  DS_TBenchRecord020 := TDictionary<string, TBenchRecord020>.Create;
  try
    DS_TBenchRecord020.Add('key', Default(TBenchRecord020));
  finally
    DS_TBenchRecord020.Free;
  end;
  DI_TBenchRecord020 := TDictionary<Integer, TBenchRecord020>.Create;
  try
    DI_TBenchRecord020.Add(1, Default(TBenchRecord020));
  finally
    DI_TBenchRecord020.Free;
  end;
  DG_TBenchRecord020 := TDictionary<TGUID, TBenchRecord020>.Create;
  try
    DG_TBenchRecord020.Add(TGUID.Empty, Default(TBenchRecord020));
  finally
    DG_TBenchRecord020.Free;
  end;
  DS_TBenchRecord021 := TDictionary<string, TBenchRecord021>.Create;
  try
    DS_TBenchRecord021.Add('key', Default(TBenchRecord021));
  finally
    DS_TBenchRecord021.Free;
  end;
  DI_TBenchRecord021 := TDictionary<Integer, TBenchRecord021>.Create;
  try
    DI_TBenchRecord021.Add(1, Default(TBenchRecord021));
  finally
    DI_TBenchRecord021.Free;
  end;
  DG_TBenchRecord021 := TDictionary<TGUID, TBenchRecord021>.Create;
  try
    DG_TBenchRecord021.Add(TGUID.Empty, Default(TBenchRecord021));
  finally
    DG_TBenchRecord021.Free;
  end;
  DS_TBenchRecord022 := TDictionary<string, TBenchRecord022>.Create;
  try
    DS_TBenchRecord022.Add('key', Default(TBenchRecord022));
  finally
    DS_TBenchRecord022.Free;
  end;
  DI_TBenchRecord022 := TDictionary<Integer, TBenchRecord022>.Create;
  try
    DI_TBenchRecord022.Add(1, Default(TBenchRecord022));
  finally
    DI_TBenchRecord022.Free;
  end;
  DG_TBenchRecord022 := TDictionary<TGUID, TBenchRecord022>.Create;
  try
    DG_TBenchRecord022.Add(TGUID.Empty, Default(TBenchRecord022));
  finally
    DG_TBenchRecord022.Free;
  end;
  DS_TBenchRecord023 := TDictionary<string, TBenchRecord023>.Create;
  try
    DS_TBenchRecord023.Add('key', Default(TBenchRecord023));
  finally
    DS_TBenchRecord023.Free;
  end;
  DI_TBenchRecord023 := TDictionary<Integer, TBenchRecord023>.Create;
  try
    DI_TBenchRecord023.Add(1, Default(TBenchRecord023));
  finally
    DI_TBenchRecord023.Free;
  end;
  DG_TBenchRecord023 := TDictionary<TGUID, TBenchRecord023>.Create;
  try
    DG_TBenchRecord023.Add(TGUID.Empty, Default(TBenchRecord023));
  finally
    DG_TBenchRecord023.Free;
  end;
  DS_TBenchRecord024 := TDictionary<string, TBenchRecord024>.Create;
  try
    DS_TBenchRecord024.Add('key', Default(TBenchRecord024));
  finally
    DS_TBenchRecord024.Free;
  end;
  DI_TBenchRecord024 := TDictionary<Integer, TBenchRecord024>.Create;
  try
    DI_TBenchRecord024.Add(1, Default(TBenchRecord024));
  finally
    DI_TBenchRecord024.Free;
  end;
  DG_TBenchRecord024 := TDictionary<TGUID, TBenchRecord024>.Create;
  try
    DG_TBenchRecord024.Add(TGUID.Empty, Default(TBenchRecord024));
  finally
    DG_TBenchRecord024.Free;
  end;
  DS_TBenchRecord025 := TDictionary<string, TBenchRecord025>.Create;
  try
    DS_TBenchRecord025.Add('key', Default(TBenchRecord025));
  finally
    DS_TBenchRecord025.Free;
  end;
  DI_TBenchRecord025 := TDictionary<Integer, TBenchRecord025>.Create;
  try
    DI_TBenchRecord025.Add(1, Default(TBenchRecord025));
  finally
    DI_TBenchRecord025.Free;
  end;
  DG_TBenchRecord025 := TDictionary<TGUID, TBenchRecord025>.Create;
  try
    DG_TBenchRecord025.Add(TGUID.Empty, Default(TBenchRecord025));
  finally
    DG_TBenchRecord025.Free;
  end;
  DS_TBenchRecord026 := TDictionary<string, TBenchRecord026>.Create;
  try
    DS_TBenchRecord026.Add('key', Default(TBenchRecord026));
  finally
    DS_TBenchRecord026.Free;
  end;
  DI_TBenchRecord026 := TDictionary<Integer, TBenchRecord026>.Create;
  try
    DI_TBenchRecord026.Add(1, Default(TBenchRecord026));
  finally
    DI_TBenchRecord026.Free;
  end;
  DG_TBenchRecord026 := TDictionary<TGUID, TBenchRecord026>.Create;
  try
    DG_TBenchRecord026.Add(TGUID.Empty, Default(TBenchRecord026));
  finally
    DG_TBenchRecord026.Free;
  end;
  DS_TBenchRecord027 := TDictionary<string, TBenchRecord027>.Create;
  try
    DS_TBenchRecord027.Add('key', Default(TBenchRecord027));
  finally
    DS_TBenchRecord027.Free;
  end;
  DI_TBenchRecord027 := TDictionary<Integer, TBenchRecord027>.Create;
  try
    DI_TBenchRecord027.Add(1, Default(TBenchRecord027));
  finally
    DI_TBenchRecord027.Free;
  end;
  DG_TBenchRecord027 := TDictionary<TGUID, TBenchRecord027>.Create;
  try
    DG_TBenchRecord027.Add(TGUID.Empty, Default(TBenchRecord027));
  finally
    DG_TBenchRecord027.Free;
  end;
  DS_TBenchRecord028 := TDictionary<string, TBenchRecord028>.Create;
  try
    DS_TBenchRecord028.Add('key', Default(TBenchRecord028));
  finally
    DS_TBenchRecord028.Free;
  end;
  DI_TBenchRecord028 := TDictionary<Integer, TBenchRecord028>.Create;
  try
    DI_TBenchRecord028.Add(1, Default(TBenchRecord028));
  finally
    DI_TBenchRecord028.Free;
  end;
  DG_TBenchRecord028 := TDictionary<TGUID, TBenchRecord028>.Create;
  try
    DG_TBenchRecord028.Add(TGUID.Empty, Default(TBenchRecord028));
  finally
    DG_TBenchRecord028.Free;
  end;
  DS_TBenchRecord029 := TDictionary<string, TBenchRecord029>.Create;
  try
    DS_TBenchRecord029.Add('key', Default(TBenchRecord029));
  finally
    DS_TBenchRecord029.Free;
  end;
  DI_TBenchRecord029 := TDictionary<Integer, TBenchRecord029>.Create;
  try
    DI_TBenchRecord029.Add(1, Default(TBenchRecord029));
  finally
    DI_TBenchRecord029.Free;
  end;
  DG_TBenchRecord029 := TDictionary<TGUID, TBenchRecord029>.Create;
  try
    DG_TBenchRecord029.Add(TGUID.Empty, Default(TBenchRecord029));
  finally
    DG_TBenchRecord029.Free;
  end;
  DS_TBenchRecord030 := TDictionary<string, TBenchRecord030>.Create;
  try
    DS_TBenchRecord030.Add('key', Default(TBenchRecord030));
  finally
    DS_TBenchRecord030.Free;
  end;
  DI_TBenchRecord030 := TDictionary<Integer, TBenchRecord030>.Create;
  try
    DI_TBenchRecord030.Add(1, Default(TBenchRecord030));
  finally
    DI_TBenchRecord030.Free;
  end;
  DG_TBenchRecord030 := TDictionary<TGUID, TBenchRecord030>.Create;
  try
    DG_TBenchRecord030.Add(TGUID.Empty, Default(TBenchRecord030));
  finally
    DG_TBenchRecord030.Free;
  end;
  DS_TBenchRecord031 := TDictionary<string, TBenchRecord031>.Create;
  try
    DS_TBenchRecord031.Add('key', Default(TBenchRecord031));
  finally
    DS_TBenchRecord031.Free;
  end;
  DI_TBenchRecord031 := TDictionary<Integer, TBenchRecord031>.Create;
  try
    DI_TBenchRecord031.Add(1, Default(TBenchRecord031));
  finally
    DI_TBenchRecord031.Free;
  end;
  DG_TBenchRecord031 := TDictionary<TGUID, TBenchRecord031>.Create;
  try
    DG_TBenchRecord031.Add(TGUID.Empty, Default(TBenchRecord031));
  finally
    DG_TBenchRecord031.Free;
  end;
  DS_TBenchRecord032 := TDictionary<string, TBenchRecord032>.Create;
  try
    DS_TBenchRecord032.Add('key', Default(TBenchRecord032));
  finally
    DS_TBenchRecord032.Free;
  end;
  DI_TBenchRecord032 := TDictionary<Integer, TBenchRecord032>.Create;
  try
    DI_TBenchRecord032.Add(1, Default(TBenchRecord032));
  finally
    DI_TBenchRecord032.Free;
  end;
  DG_TBenchRecord032 := TDictionary<TGUID, TBenchRecord032>.Create;
  try
    DG_TBenchRecord032.Add(TGUID.Empty, Default(TBenchRecord032));
  finally
    DG_TBenchRecord032.Free;
  end;
  DS_TBenchRecord033 := TDictionary<string, TBenchRecord033>.Create;
  try
    DS_TBenchRecord033.Add('key', Default(TBenchRecord033));
  finally
    DS_TBenchRecord033.Free;
  end;
  DI_TBenchRecord033 := TDictionary<Integer, TBenchRecord033>.Create;
  try
    DI_TBenchRecord033.Add(1, Default(TBenchRecord033));
  finally
    DI_TBenchRecord033.Free;
  end;
  DG_TBenchRecord033 := TDictionary<TGUID, TBenchRecord033>.Create;
  try
    DG_TBenchRecord033.Add(TGUID.Empty, Default(TBenchRecord033));
  finally
    DG_TBenchRecord033.Free;
  end;
  DS_TBenchRecord034 := TDictionary<string, TBenchRecord034>.Create;
  try
    DS_TBenchRecord034.Add('key', Default(TBenchRecord034));
  finally
    DS_TBenchRecord034.Free;
  end;
  DI_TBenchRecord034 := TDictionary<Integer, TBenchRecord034>.Create;
  try
    DI_TBenchRecord034.Add(1, Default(TBenchRecord034));
  finally
    DI_TBenchRecord034.Free;
  end;
  DG_TBenchRecord034 := TDictionary<TGUID, TBenchRecord034>.Create;
  try
    DG_TBenchRecord034.Add(TGUID.Empty, Default(TBenchRecord034));
  finally
    DG_TBenchRecord034.Free;
  end;
  DS_TBenchRecord035 := TDictionary<string, TBenchRecord035>.Create;
  try
    DS_TBenchRecord035.Add('key', Default(TBenchRecord035));
  finally
    DS_TBenchRecord035.Free;
  end;
  DI_TBenchRecord035 := TDictionary<Integer, TBenchRecord035>.Create;
  try
    DI_TBenchRecord035.Add(1, Default(TBenchRecord035));
  finally
    DI_TBenchRecord035.Free;
  end;
  DG_TBenchRecord035 := TDictionary<TGUID, TBenchRecord035>.Create;
  try
    DG_TBenchRecord035.Add(TGUID.Empty, Default(TBenchRecord035));
  finally
    DG_TBenchRecord035.Free;
  end;
  DS_TBenchRecord036 := TDictionary<string, TBenchRecord036>.Create;
  try
    DS_TBenchRecord036.Add('key', Default(TBenchRecord036));
  finally
    DS_TBenchRecord036.Free;
  end;
  DI_TBenchRecord036 := TDictionary<Integer, TBenchRecord036>.Create;
  try
    DI_TBenchRecord036.Add(1, Default(TBenchRecord036));
  finally
    DI_TBenchRecord036.Free;
  end;
  DG_TBenchRecord036 := TDictionary<TGUID, TBenchRecord036>.Create;
  try
    DG_TBenchRecord036.Add(TGUID.Empty, Default(TBenchRecord036));
  finally
    DG_TBenchRecord036.Free;
  end;
  DS_TBenchRecord037 := TDictionary<string, TBenchRecord037>.Create;
  try
    DS_TBenchRecord037.Add('key', Default(TBenchRecord037));
  finally
    DS_TBenchRecord037.Free;
  end;
  DI_TBenchRecord037 := TDictionary<Integer, TBenchRecord037>.Create;
  try
    DI_TBenchRecord037.Add(1, Default(TBenchRecord037));
  finally
    DI_TBenchRecord037.Free;
  end;
  DG_TBenchRecord037 := TDictionary<TGUID, TBenchRecord037>.Create;
  try
    DG_TBenchRecord037.Add(TGUID.Empty, Default(TBenchRecord037));
  finally
    DG_TBenchRecord037.Free;
  end;
  DS_TBenchRecord038 := TDictionary<string, TBenchRecord038>.Create;
  try
    DS_TBenchRecord038.Add('key', Default(TBenchRecord038));
  finally
    DS_TBenchRecord038.Free;
  end;
  DI_TBenchRecord038 := TDictionary<Integer, TBenchRecord038>.Create;
  try
    DI_TBenchRecord038.Add(1, Default(TBenchRecord038));
  finally
    DI_TBenchRecord038.Free;
  end;
  DG_TBenchRecord038 := TDictionary<TGUID, TBenchRecord038>.Create;
  try
    DG_TBenchRecord038.Add(TGUID.Empty, Default(TBenchRecord038));
  finally
    DG_TBenchRecord038.Free;
  end;
  DS_TBenchRecord039 := TDictionary<string, TBenchRecord039>.Create;
  try
    DS_TBenchRecord039.Add('key', Default(TBenchRecord039));
  finally
    DS_TBenchRecord039.Free;
  end;
  DI_TBenchRecord039 := TDictionary<Integer, TBenchRecord039>.Create;
  try
    DI_TBenchRecord039.Add(1, Default(TBenchRecord039));
  finally
    DI_TBenchRecord039.Free;
  end;
  DG_TBenchRecord039 := TDictionary<TGUID, TBenchRecord039>.Create;
  try
    DG_TBenchRecord039.Add(TGUID.Empty, Default(TBenchRecord039));
  finally
    DG_TBenchRecord039.Free;
  end;
  DS_TBenchRecord040 := TDictionary<string, TBenchRecord040>.Create;
  try
    DS_TBenchRecord040.Add('key', Default(TBenchRecord040));
  finally
    DS_TBenchRecord040.Free;
  end;
  DI_TBenchRecord040 := TDictionary<Integer, TBenchRecord040>.Create;
  try
    DI_TBenchRecord040.Add(1, Default(TBenchRecord040));
  finally
    DI_TBenchRecord040.Free;
  end;
  DG_TBenchRecord040 := TDictionary<TGUID, TBenchRecord040>.Create;
  try
    DG_TBenchRecord040.Add(TGUID.Empty, Default(TBenchRecord040));
  finally
    DG_TBenchRecord040.Free;
  end;
  DS_TBenchRecord041 := TDictionary<string, TBenchRecord041>.Create;
  try
    DS_TBenchRecord041.Add('key', Default(TBenchRecord041));
  finally
    DS_TBenchRecord041.Free;
  end;
  DI_TBenchRecord041 := TDictionary<Integer, TBenchRecord041>.Create;
  try
    DI_TBenchRecord041.Add(1, Default(TBenchRecord041));
  finally
    DI_TBenchRecord041.Free;
  end;
  DG_TBenchRecord041 := TDictionary<TGUID, TBenchRecord041>.Create;
  try
    DG_TBenchRecord041.Add(TGUID.Empty, Default(TBenchRecord041));
  finally
    DG_TBenchRecord041.Free;
  end;
  DS_TBenchRecord042 := TDictionary<string, TBenchRecord042>.Create;
  try
    DS_TBenchRecord042.Add('key', Default(TBenchRecord042));
  finally
    DS_TBenchRecord042.Free;
  end;
  DI_TBenchRecord042 := TDictionary<Integer, TBenchRecord042>.Create;
  try
    DI_TBenchRecord042.Add(1, Default(TBenchRecord042));
  finally
    DI_TBenchRecord042.Free;
  end;
  DG_TBenchRecord042 := TDictionary<TGUID, TBenchRecord042>.Create;
  try
    DG_TBenchRecord042.Add(TGUID.Empty, Default(TBenchRecord042));
  finally
    DG_TBenchRecord042.Free;
  end;
  DS_TBenchRecord043 := TDictionary<string, TBenchRecord043>.Create;
  try
    DS_TBenchRecord043.Add('key', Default(TBenchRecord043));
  finally
    DS_TBenchRecord043.Free;
  end;
  DI_TBenchRecord043 := TDictionary<Integer, TBenchRecord043>.Create;
  try
    DI_TBenchRecord043.Add(1, Default(TBenchRecord043));
  finally
    DI_TBenchRecord043.Free;
  end;
  DG_TBenchRecord043 := TDictionary<TGUID, TBenchRecord043>.Create;
  try
    DG_TBenchRecord043.Add(TGUID.Empty, Default(TBenchRecord043));
  finally
    DG_TBenchRecord043.Free;
  end;
  DS_TBenchRecord044 := TDictionary<string, TBenchRecord044>.Create;
  try
    DS_TBenchRecord044.Add('key', Default(TBenchRecord044));
  finally
    DS_TBenchRecord044.Free;
  end;
  DI_TBenchRecord044 := TDictionary<Integer, TBenchRecord044>.Create;
  try
    DI_TBenchRecord044.Add(1, Default(TBenchRecord044));
  finally
    DI_TBenchRecord044.Free;
  end;
  DG_TBenchRecord044 := TDictionary<TGUID, TBenchRecord044>.Create;
  try
    DG_TBenchRecord044.Add(TGUID.Empty, Default(TBenchRecord044));
  finally
    DG_TBenchRecord044.Free;
  end;
  DS_TBenchRecord045 := TDictionary<string, TBenchRecord045>.Create;
  try
    DS_TBenchRecord045.Add('key', Default(TBenchRecord045));
  finally
    DS_TBenchRecord045.Free;
  end;
  DI_TBenchRecord045 := TDictionary<Integer, TBenchRecord045>.Create;
  try
    DI_TBenchRecord045.Add(1, Default(TBenchRecord045));
  finally
    DI_TBenchRecord045.Free;
  end;
  DG_TBenchRecord045 := TDictionary<TGUID, TBenchRecord045>.Create;
  try
    DG_TBenchRecord045.Add(TGUID.Empty, Default(TBenchRecord045));
  finally
    DG_TBenchRecord045.Free;
  end;
  DS_TBenchRecord046 := TDictionary<string, TBenchRecord046>.Create;
  try
    DS_TBenchRecord046.Add('key', Default(TBenchRecord046));
  finally
    DS_TBenchRecord046.Free;
  end;
  DI_TBenchRecord046 := TDictionary<Integer, TBenchRecord046>.Create;
  try
    DI_TBenchRecord046.Add(1, Default(TBenchRecord046));
  finally
    DI_TBenchRecord046.Free;
  end;
  DG_TBenchRecord046 := TDictionary<TGUID, TBenchRecord046>.Create;
  try
    DG_TBenchRecord046.Add(TGUID.Empty, Default(TBenchRecord046));
  finally
    DG_TBenchRecord046.Free;
  end;
  DS_TBenchRecord047 := TDictionary<string, TBenchRecord047>.Create;
  try
    DS_TBenchRecord047.Add('key', Default(TBenchRecord047));
  finally
    DS_TBenchRecord047.Free;
  end;
  DI_TBenchRecord047 := TDictionary<Integer, TBenchRecord047>.Create;
  try
    DI_TBenchRecord047.Add(1, Default(TBenchRecord047));
  finally
    DI_TBenchRecord047.Free;
  end;
  DG_TBenchRecord047 := TDictionary<TGUID, TBenchRecord047>.Create;
  try
    DG_TBenchRecord047.Add(TGUID.Empty, Default(TBenchRecord047));
  finally
    DG_TBenchRecord047.Free;
  end;
  DS_TBenchRecord048 := TDictionary<string, TBenchRecord048>.Create;
  try
    DS_TBenchRecord048.Add('key', Default(TBenchRecord048));
  finally
    DS_TBenchRecord048.Free;
  end;
  DI_TBenchRecord048 := TDictionary<Integer, TBenchRecord048>.Create;
  try
    DI_TBenchRecord048.Add(1, Default(TBenchRecord048));
  finally
    DI_TBenchRecord048.Free;
  end;
  DG_TBenchRecord048 := TDictionary<TGUID, TBenchRecord048>.Create;
  try
    DG_TBenchRecord048.Add(TGUID.Empty, Default(TBenchRecord048));
  finally
    DG_TBenchRecord048.Free;
  end;
  DS_TBenchRecord049 := TDictionary<string, TBenchRecord049>.Create;
  try
    DS_TBenchRecord049.Add('key', Default(TBenchRecord049));
  finally
    DS_TBenchRecord049.Free;
  end;
  DI_TBenchRecord049 := TDictionary<Integer, TBenchRecord049>.Create;
  try
    DI_TBenchRecord049.Add(1, Default(TBenchRecord049));
  finally
    DI_TBenchRecord049.Free;
  end;
  DG_TBenchRecord049 := TDictionary<TGUID, TBenchRecord049>.Create;
  try
    DG_TBenchRecord049.Add(TGUID.Empty, Default(TBenchRecord049));
  finally
    DG_TBenchRecord049.Free;
  end;
  DS_TBenchRecord050 := TDictionary<string, TBenchRecord050>.Create;
  try
    DS_TBenchRecord050.Add('key', Default(TBenchRecord050));
  finally
    DS_TBenchRecord050.Free;
  end;
  DI_TBenchRecord050 := TDictionary<Integer, TBenchRecord050>.Create;
  try
    DI_TBenchRecord050.Add(1, Default(TBenchRecord050));
  finally
    DI_TBenchRecord050.Free;
  end;
  DG_TBenchRecord050 := TDictionary<TGUID, TBenchRecord050>.Create;
  try
    DG_TBenchRecord050.Add(TGUID.Empty, Default(TBenchRecord050));
  finally
    DG_TBenchRecord050.Free;
  end;
  DS_TBenchRecord051 := TDictionary<string, TBenchRecord051>.Create;
  try
    DS_TBenchRecord051.Add('key', Default(TBenchRecord051));
  finally
    DS_TBenchRecord051.Free;
  end;
  DI_TBenchRecord051 := TDictionary<Integer, TBenchRecord051>.Create;
  try
    DI_TBenchRecord051.Add(1, Default(TBenchRecord051));
  finally
    DI_TBenchRecord051.Free;
  end;
  DG_TBenchRecord051 := TDictionary<TGUID, TBenchRecord051>.Create;
  try
    DG_TBenchRecord051.Add(TGUID.Empty, Default(TBenchRecord051));
  finally
    DG_TBenchRecord051.Free;
  end;
  DS_TBenchRecord052 := TDictionary<string, TBenchRecord052>.Create;
  try
    DS_TBenchRecord052.Add('key', Default(TBenchRecord052));
  finally
    DS_TBenchRecord052.Free;
  end;
  DI_TBenchRecord052 := TDictionary<Integer, TBenchRecord052>.Create;
  try
    DI_TBenchRecord052.Add(1, Default(TBenchRecord052));
  finally
    DI_TBenchRecord052.Free;
  end;
  DG_TBenchRecord052 := TDictionary<TGUID, TBenchRecord052>.Create;
  try
    DG_TBenchRecord052.Add(TGUID.Empty, Default(TBenchRecord052));
  finally
    DG_TBenchRecord052.Free;
  end;
  DS_TBenchRecord053 := TDictionary<string, TBenchRecord053>.Create;
  try
    DS_TBenchRecord053.Add('key', Default(TBenchRecord053));
  finally
    DS_TBenchRecord053.Free;
  end;
  DI_TBenchRecord053 := TDictionary<Integer, TBenchRecord053>.Create;
  try
    DI_TBenchRecord053.Add(1, Default(TBenchRecord053));
  finally
    DI_TBenchRecord053.Free;
  end;
  DG_TBenchRecord053 := TDictionary<TGUID, TBenchRecord053>.Create;
  try
    DG_TBenchRecord053.Add(TGUID.Empty, Default(TBenchRecord053));
  finally
    DG_TBenchRecord053.Free;
  end;
  DS_TBenchRecord054 := TDictionary<string, TBenchRecord054>.Create;
  try
    DS_TBenchRecord054.Add('key', Default(TBenchRecord054));
  finally
    DS_TBenchRecord054.Free;
  end;
  DI_TBenchRecord054 := TDictionary<Integer, TBenchRecord054>.Create;
  try
    DI_TBenchRecord054.Add(1, Default(TBenchRecord054));
  finally
    DI_TBenchRecord054.Free;
  end;
  DG_TBenchRecord054 := TDictionary<TGUID, TBenchRecord054>.Create;
  try
    DG_TBenchRecord054.Add(TGUID.Empty, Default(TBenchRecord054));
  finally
    DG_TBenchRecord054.Free;
  end;
  DS_TBenchRecord055 := TDictionary<string, TBenchRecord055>.Create;
  try
    DS_TBenchRecord055.Add('key', Default(TBenchRecord055));
  finally
    DS_TBenchRecord055.Free;
  end;
  DI_TBenchRecord055 := TDictionary<Integer, TBenchRecord055>.Create;
  try
    DI_TBenchRecord055.Add(1, Default(TBenchRecord055));
  finally
    DI_TBenchRecord055.Free;
  end;
  DG_TBenchRecord055 := TDictionary<TGUID, TBenchRecord055>.Create;
  try
    DG_TBenchRecord055.Add(TGUID.Empty, Default(TBenchRecord055));
  finally
    DG_TBenchRecord055.Free;
  end;
  DS_TBenchRecord056 := TDictionary<string, TBenchRecord056>.Create;
  try
    DS_TBenchRecord056.Add('key', Default(TBenchRecord056));
  finally
    DS_TBenchRecord056.Free;
  end;
  DI_TBenchRecord056 := TDictionary<Integer, TBenchRecord056>.Create;
  try
    DI_TBenchRecord056.Add(1, Default(TBenchRecord056));
  finally
    DI_TBenchRecord056.Free;
  end;
  DG_TBenchRecord056 := TDictionary<TGUID, TBenchRecord056>.Create;
  try
    DG_TBenchRecord056.Add(TGUID.Empty, Default(TBenchRecord056));
  finally
    DG_TBenchRecord056.Free;
  end;
  DS_TBenchRecord057 := TDictionary<string, TBenchRecord057>.Create;
  try
    DS_TBenchRecord057.Add('key', Default(TBenchRecord057));
  finally
    DS_TBenchRecord057.Free;
  end;
  DI_TBenchRecord057 := TDictionary<Integer, TBenchRecord057>.Create;
  try
    DI_TBenchRecord057.Add(1, Default(TBenchRecord057));
  finally
    DI_TBenchRecord057.Free;
  end;
  DG_TBenchRecord057 := TDictionary<TGUID, TBenchRecord057>.Create;
  try
    DG_TBenchRecord057.Add(TGUID.Empty, Default(TBenchRecord057));
  finally
    DG_TBenchRecord057.Free;
  end;
  DS_TBenchRecord058 := TDictionary<string, TBenchRecord058>.Create;
  try
    DS_TBenchRecord058.Add('key', Default(TBenchRecord058));
  finally
    DS_TBenchRecord058.Free;
  end;
  DI_TBenchRecord058 := TDictionary<Integer, TBenchRecord058>.Create;
  try
    DI_TBenchRecord058.Add(1, Default(TBenchRecord058));
  finally
    DI_TBenchRecord058.Free;
  end;
  DG_TBenchRecord058 := TDictionary<TGUID, TBenchRecord058>.Create;
  try
    DG_TBenchRecord058.Add(TGUID.Empty, Default(TBenchRecord058));
  finally
    DG_TBenchRecord058.Free;
  end;
  DS_TBenchRecord059 := TDictionary<string, TBenchRecord059>.Create;
  try
    DS_TBenchRecord059.Add('key', Default(TBenchRecord059));
  finally
    DS_TBenchRecord059.Free;
  end;
  DI_TBenchRecord059 := TDictionary<Integer, TBenchRecord059>.Create;
  try
    DI_TBenchRecord059.Add(1, Default(TBenchRecord059));
  finally
    DI_TBenchRecord059.Free;
  end;
  DG_TBenchRecord059 := TDictionary<TGUID, TBenchRecord059>.Create;
  try
    DG_TBenchRecord059.Add(TGUID.Empty, Default(TBenchRecord059));
  finally
    DG_TBenchRecord059.Free;
  end;
  DS_TBenchRecord060 := TDictionary<string, TBenchRecord060>.Create;
  try
    DS_TBenchRecord060.Add('key', Default(TBenchRecord060));
  finally
    DS_TBenchRecord060.Free;
  end;
  DI_TBenchRecord060 := TDictionary<Integer, TBenchRecord060>.Create;
  try
    DI_TBenchRecord060.Add(1, Default(TBenchRecord060));
  finally
    DI_TBenchRecord060.Free;
  end;
  DG_TBenchRecord060 := TDictionary<TGUID, TBenchRecord060>.Create;
  try
    DG_TBenchRecord060.Add(TGUID.Empty, Default(TBenchRecord060));
  finally
    DG_TBenchRecord060.Free;
  end;
  DS_TBenchRecord061 := TDictionary<string, TBenchRecord061>.Create;
  try
    DS_TBenchRecord061.Add('key', Default(TBenchRecord061));
  finally
    DS_TBenchRecord061.Free;
  end;
  DI_TBenchRecord061 := TDictionary<Integer, TBenchRecord061>.Create;
  try
    DI_TBenchRecord061.Add(1, Default(TBenchRecord061));
  finally
    DI_TBenchRecord061.Free;
  end;
  DG_TBenchRecord061 := TDictionary<TGUID, TBenchRecord061>.Create;
  try
    DG_TBenchRecord061.Add(TGUID.Empty, Default(TBenchRecord061));
  finally
    DG_TBenchRecord061.Free;
  end;
  DS_TBenchRecord062 := TDictionary<string, TBenchRecord062>.Create;
  try
    DS_TBenchRecord062.Add('key', Default(TBenchRecord062));
  finally
    DS_TBenchRecord062.Free;
  end;
  DI_TBenchRecord062 := TDictionary<Integer, TBenchRecord062>.Create;
  try
    DI_TBenchRecord062.Add(1, Default(TBenchRecord062));
  finally
    DI_TBenchRecord062.Free;
  end;
  DG_TBenchRecord062 := TDictionary<TGUID, TBenchRecord062>.Create;
  try
    DG_TBenchRecord062.Add(TGUID.Empty, Default(TBenchRecord062));
  finally
    DG_TBenchRecord062.Free;
  end;
  DS_TBenchRecord063 := TDictionary<string, TBenchRecord063>.Create;
  try
    DS_TBenchRecord063.Add('key', Default(TBenchRecord063));
  finally
    DS_TBenchRecord063.Free;
  end;
  DI_TBenchRecord063 := TDictionary<Integer, TBenchRecord063>.Create;
  try
    DI_TBenchRecord063.Add(1, Default(TBenchRecord063));
  finally
    DI_TBenchRecord063.Free;
  end;
  DG_TBenchRecord063 := TDictionary<TGUID, TBenchRecord063>.Create;
  try
    DG_TBenchRecord063.Add(TGUID.Empty, Default(TBenchRecord063));
  finally
    DG_TBenchRecord063.Free;
  end;
  DS_TBenchRecord064 := TDictionary<string, TBenchRecord064>.Create;
  try
    DS_TBenchRecord064.Add('key', Default(TBenchRecord064));
  finally
    DS_TBenchRecord064.Free;
  end;
  DI_TBenchRecord064 := TDictionary<Integer, TBenchRecord064>.Create;
  try
    DI_TBenchRecord064.Add(1, Default(TBenchRecord064));
  finally
    DI_TBenchRecord064.Free;
  end;
  DG_TBenchRecord064 := TDictionary<TGUID, TBenchRecord064>.Create;
  try
    DG_TBenchRecord064.Add(TGUID.Empty, Default(TBenchRecord064));
  finally
    DG_TBenchRecord064.Free;
  end;
  DS_TBenchRecord065 := TDictionary<string, TBenchRecord065>.Create;
  try
    DS_TBenchRecord065.Add('key', Default(TBenchRecord065));
  finally
    DS_TBenchRecord065.Free;
  end;
  DI_TBenchRecord065 := TDictionary<Integer, TBenchRecord065>.Create;
  try
    DI_TBenchRecord065.Add(1, Default(TBenchRecord065));
  finally
    DI_TBenchRecord065.Free;
  end;
  DG_TBenchRecord065 := TDictionary<TGUID, TBenchRecord065>.Create;
  try
    DG_TBenchRecord065.Add(TGUID.Empty, Default(TBenchRecord065));
  finally
    DG_TBenchRecord065.Free;
  end;
  DS_TBenchRecord066 := TDictionary<string, TBenchRecord066>.Create;
  try
    DS_TBenchRecord066.Add('key', Default(TBenchRecord066));
  finally
    DS_TBenchRecord066.Free;
  end;
  DI_TBenchRecord066 := TDictionary<Integer, TBenchRecord066>.Create;
  try
    DI_TBenchRecord066.Add(1, Default(TBenchRecord066));
  finally
    DI_TBenchRecord066.Free;
  end;
  DG_TBenchRecord066 := TDictionary<TGUID, TBenchRecord066>.Create;
  try
    DG_TBenchRecord066.Add(TGUID.Empty, Default(TBenchRecord066));
  finally
    DG_TBenchRecord066.Free;
  end;
  DS_TBenchRecord067 := TDictionary<string, TBenchRecord067>.Create;
  try
    DS_TBenchRecord067.Add('key', Default(TBenchRecord067));
  finally
    DS_TBenchRecord067.Free;
  end;
  DI_TBenchRecord067 := TDictionary<Integer, TBenchRecord067>.Create;
  try
    DI_TBenchRecord067.Add(1, Default(TBenchRecord067));
  finally
    DI_TBenchRecord067.Free;
  end;
  DG_TBenchRecord067 := TDictionary<TGUID, TBenchRecord067>.Create;
  try
    DG_TBenchRecord067.Add(TGUID.Empty, Default(TBenchRecord067));
  finally
    DG_TBenchRecord067.Free;
  end;
  DS_TBenchRecord068 := TDictionary<string, TBenchRecord068>.Create;
  try
    DS_TBenchRecord068.Add('key', Default(TBenchRecord068));
  finally
    DS_TBenchRecord068.Free;
  end;
  DI_TBenchRecord068 := TDictionary<Integer, TBenchRecord068>.Create;
  try
    DI_TBenchRecord068.Add(1, Default(TBenchRecord068));
  finally
    DI_TBenchRecord068.Free;
  end;
  DG_TBenchRecord068 := TDictionary<TGUID, TBenchRecord068>.Create;
  try
    DG_TBenchRecord068.Add(TGUID.Empty, Default(TBenchRecord068));
  finally
    DG_TBenchRecord068.Free;
  end;
  DS_TBenchRecord069 := TDictionary<string, TBenchRecord069>.Create;
  try
    DS_TBenchRecord069.Add('key', Default(TBenchRecord069));
  finally
    DS_TBenchRecord069.Free;
  end;
  DI_TBenchRecord069 := TDictionary<Integer, TBenchRecord069>.Create;
  try
    DI_TBenchRecord069.Add(1, Default(TBenchRecord069));
  finally
    DI_TBenchRecord069.Free;
  end;
  DG_TBenchRecord069 := TDictionary<TGUID, TBenchRecord069>.Create;
  try
    DG_TBenchRecord069.Add(TGUID.Empty, Default(TBenchRecord069));
  finally
    DG_TBenchRecord069.Free;
  end;
  DS_TBenchRecord070 := TDictionary<string, TBenchRecord070>.Create;
  try
    DS_TBenchRecord070.Add('key', Default(TBenchRecord070));
  finally
    DS_TBenchRecord070.Free;
  end;
  DI_TBenchRecord070 := TDictionary<Integer, TBenchRecord070>.Create;
  try
    DI_TBenchRecord070.Add(1, Default(TBenchRecord070));
  finally
    DI_TBenchRecord070.Free;
  end;
  DG_TBenchRecord070 := TDictionary<TGUID, TBenchRecord070>.Create;
  try
    DG_TBenchRecord070.Add(TGUID.Empty, Default(TBenchRecord070));
  finally
    DG_TBenchRecord070.Free;
  end;
  DS_TBenchRecord071 := TDictionary<string, TBenchRecord071>.Create;
  try
    DS_TBenchRecord071.Add('key', Default(TBenchRecord071));
  finally
    DS_TBenchRecord071.Free;
  end;
  DI_TBenchRecord071 := TDictionary<Integer, TBenchRecord071>.Create;
  try
    DI_TBenchRecord071.Add(1, Default(TBenchRecord071));
  finally
    DI_TBenchRecord071.Free;
  end;
  DG_TBenchRecord071 := TDictionary<TGUID, TBenchRecord071>.Create;
  try
    DG_TBenchRecord071.Add(TGUID.Empty, Default(TBenchRecord071));
  finally
    DG_TBenchRecord071.Free;
  end;
  DS_TBenchRecord072 := TDictionary<string, TBenchRecord072>.Create;
  try
    DS_TBenchRecord072.Add('key', Default(TBenchRecord072));
  finally
    DS_TBenchRecord072.Free;
  end;
  DI_TBenchRecord072 := TDictionary<Integer, TBenchRecord072>.Create;
  try
    DI_TBenchRecord072.Add(1, Default(TBenchRecord072));
  finally
    DI_TBenchRecord072.Free;
  end;
  DG_TBenchRecord072 := TDictionary<TGUID, TBenchRecord072>.Create;
  try
    DG_TBenchRecord072.Add(TGUID.Empty, Default(TBenchRecord072));
  finally
    DG_TBenchRecord072.Free;
  end;
  DS_TBenchRecord073 := TDictionary<string, TBenchRecord073>.Create;
  try
    DS_TBenchRecord073.Add('key', Default(TBenchRecord073));
  finally
    DS_TBenchRecord073.Free;
  end;
  DI_TBenchRecord073 := TDictionary<Integer, TBenchRecord073>.Create;
  try
    DI_TBenchRecord073.Add(1, Default(TBenchRecord073));
  finally
    DI_TBenchRecord073.Free;
  end;
  DG_TBenchRecord073 := TDictionary<TGUID, TBenchRecord073>.Create;
  try
    DG_TBenchRecord073.Add(TGUID.Empty, Default(TBenchRecord073));
  finally
    DG_TBenchRecord073.Free;
  end;
  DS_TBenchRecord074 := TDictionary<string, TBenchRecord074>.Create;
  try
    DS_TBenchRecord074.Add('key', Default(TBenchRecord074));
  finally
    DS_TBenchRecord074.Free;
  end;
  DI_TBenchRecord074 := TDictionary<Integer, TBenchRecord074>.Create;
  try
    DI_TBenchRecord074.Add(1, Default(TBenchRecord074));
  finally
    DI_TBenchRecord074.Free;
  end;
  DG_TBenchRecord074 := TDictionary<TGUID, TBenchRecord074>.Create;
  try
    DG_TBenchRecord074.Add(TGUID.Empty, Default(TBenchRecord074));
  finally
    DG_TBenchRecord074.Free;
  end;
  DS_TBenchRecord075 := TDictionary<string, TBenchRecord075>.Create;
  try
    DS_TBenchRecord075.Add('key', Default(TBenchRecord075));
  finally
    DS_TBenchRecord075.Free;
  end;
  DI_TBenchRecord075 := TDictionary<Integer, TBenchRecord075>.Create;
  try
    DI_TBenchRecord075.Add(1, Default(TBenchRecord075));
  finally
    DI_TBenchRecord075.Free;
  end;
  DG_TBenchRecord075 := TDictionary<TGUID, TBenchRecord075>.Create;
  try
    DG_TBenchRecord075.Add(TGUID.Empty, Default(TBenchRecord075));
  finally
    DG_TBenchRecord075.Free;
  end;
  DS_TBenchRecord076 := TDictionary<string, TBenchRecord076>.Create;
  try
    DS_TBenchRecord076.Add('key', Default(TBenchRecord076));
  finally
    DS_TBenchRecord076.Free;
  end;
  DI_TBenchRecord076 := TDictionary<Integer, TBenchRecord076>.Create;
  try
    DI_TBenchRecord076.Add(1, Default(TBenchRecord076));
  finally
    DI_TBenchRecord076.Free;
  end;
  DG_TBenchRecord076 := TDictionary<TGUID, TBenchRecord076>.Create;
  try
    DG_TBenchRecord076.Add(TGUID.Empty, Default(TBenchRecord076));
  finally
    DG_TBenchRecord076.Free;
  end;
  DS_TBenchRecord077 := TDictionary<string, TBenchRecord077>.Create;
  try
    DS_TBenchRecord077.Add('key', Default(TBenchRecord077));
  finally
    DS_TBenchRecord077.Free;
  end;
  DI_TBenchRecord077 := TDictionary<Integer, TBenchRecord077>.Create;
  try
    DI_TBenchRecord077.Add(1, Default(TBenchRecord077));
  finally
    DI_TBenchRecord077.Free;
  end;
  DG_TBenchRecord077 := TDictionary<TGUID, TBenchRecord077>.Create;
  try
    DG_TBenchRecord077.Add(TGUID.Empty, Default(TBenchRecord077));
  finally
    DG_TBenchRecord077.Free;
  end;
  DS_TBenchRecord078 := TDictionary<string, TBenchRecord078>.Create;
  try
    DS_TBenchRecord078.Add('key', Default(TBenchRecord078));
  finally
    DS_TBenchRecord078.Free;
  end;
  DI_TBenchRecord078 := TDictionary<Integer, TBenchRecord078>.Create;
  try
    DI_TBenchRecord078.Add(1, Default(TBenchRecord078));
  finally
    DI_TBenchRecord078.Free;
  end;
  DG_TBenchRecord078 := TDictionary<TGUID, TBenchRecord078>.Create;
  try
    DG_TBenchRecord078.Add(TGUID.Empty, Default(TBenchRecord078));
  finally
    DG_TBenchRecord078.Free;
  end;
  DS_TBenchRecord079 := TDictionary<string, TBenchRecord079>.Create;
  try
    DS_TBenchRecord079.Add('key', Default(TBenchRecord079));
  finally
    DS_TBenchRecord079.Free;
  end;
  DI_TBenchRecord079 := TDictionary<Integer, TBenchRecord079>.Create;
  try
    DI_TBenchRecord079.Add(1, Default(TBenchRecord079));
  finally
    DI_TBenchRecord079.Free;
  end;
  DG_TBenchRecord079 := TDictionary<TGUID, TBenchRecord079>.Create;
  try
    DG_TBenchRecord079.Add(TGUID.Empty, Default(TBenchRecord079));
  finally
    DG_TBenchRecord079.Free;
  end;
  DS_TBenchRecord080 := TDictionary<string, TBenchRecord080>.Create;
  try
    DS_TBenchRecord080.Add('key', Default(TBenchRecord080));
  finally
    DS_TBenchRecord080.Free;
  end;
  DI_TBenchRecord080 := TDictionary<Integer, TBenchRecord080>.Create;
  try
    DI_TBenchRecord080.Add(1, Default(TBenchRecord080));
  finally
    DI_TBenchRecord080.Free;
  end;
  DG_TBenchRecord080 := TDictionary<TGUID, TBenchRecord080>.Create;
  try
    DG_TBenchRecord080.Add(TGUID.Empty, Default(TBenchRecord080));
  finally
    DG_TBenchRecord080.Free;
  end;
  DS_TBenchRecord081 := TDictionary<string, TBenchRecord081>.Create;
  try
    DS_TBenchRecord081.Add('key', Default(TBenchRecord081));
  finally
    DS_TBenchRecord081.Free;
  end;
  DI_TBenchRecord081 := TDictionary<Integer, TBenchRecord081>.Create;
  try
    DI_TBenchRecord081.Add(1, Default(TBenchRecord081));
  finally
    DI_TBenchRecord081.Free;
  end;
  DG_TBenchRecord081 := TDictionary<TGUID, TBenchRecord081>.Create;
  try
    DG_TBenchRecord081.Add(TGUID.Empty, Default(TBenchRecord081));
  finally
    DG_TBenchRecord081.Free;
  end;
  DS_TBenchRecord082 := TDictionary<string, TBenchRecord082>.Create;
  try
    DS_TBenchRecord082.Add('key', Default(TBenchRecord082));
  finally
    DS_TBenchRecord082.Free;
  end;
  DI_TBenchRecord082 := TDictionary<Integer, TBenchRecord082>.Create;
  try
    DI_TBenchRecord082.Add(1, Default(TBenchRecord082));
  finally
    DI_TBenchRecord082.Free;
  end;
  DG_TBenchRecord082 := TDictionary<TGUID, TBenchRecord082>.Create;
  try
    DG_TBenchRecord082.Add(TGUID.Empty, Default(TBenchRecord082));
  finally
    DG_TBenchRecord082.Free;
  end;
  DS_TBenchRecord083 := TDictionary<string, TBenchRecord083>.Create;
  try
    DS_TBenchRecord083.Add('key', Default(TBenchRecord083));
  finally
    DS_TBenchRecord083.Free;
  end;
  DI_TBenchRecord083 := TDictionary<Integer, TBenchRecord083>.Create;
  try
    DI_TBenchRecord083.Add(1, Default(TBenchRecord083));
  finally
    DI_TBenchRecord083.Free;
  end;
  DG_TBenchRecord083 := TDictionary<TGUID, TBenchRecord083>.Create;
  try
    DG_TBenchRecord083.Add(TGUID.Empty, Default(TBenchRecord083));
  finally
    DG_TBenchRecord083.Free;
  end;
  DS_TBenchRecord084 := TDictionary<string, TBenchRecord084>.Create;
  try
    DS_TBenchRecord084.Add('key', Default(TBenchRecord084));
  finally
    DS_TBenchRecord084.Free;
  end;
  DI_TBenchRecord084 := TDictionary<Integer, TBenchRecord084>.Create;
  try
    DI_TBenchRecord084.Add(1, Default(TBenchRecord084));
  finally
    DI_TBenchRecord084.Free;
  end;
  DG_TBenchRecord084 := TDictionary<TGUID, TBenchRecord084>.Create;
  try
    DG_TBenchRecord084.Add(TGUID.Empty, Default(TBenchRecord084));
  finally
    DG_TBenchRecord084.Free;
  end;
  DS_TBenchRecord085 := TDictionary<string, TBenchRecord085>.Create;
  try
    DS_TBenchRecord085.Add('key', Default(TBenchRecord085));
  finally
    DS_TBenchRecord085.Free;
  end;
  DI_TBenchRecord085 := TDictionary<Integer, TBenchRecord085>.Create;
  try
    DI_TBenchRecord085.Add(1, Default(TBenchRecord085));
  finally
    DI_TBenchRecord085.Free;
  end;
  DG_TBenchRecord085 := TDictionary<TGUID, TBenchRecord085>.Create;
  try
    DG_TBenchRecord085.Add(TGUID.Empty, Default(TBenchRecord085));
  finally
    DG_TBenchRecord085.Free;
  end;
  DS_TBenchRecord086 := TDictionary<string, TBenchRecord086>.Create;
  try
    DS_TBenchRecord086.Add('key', Default(TBenchRecord086));
  finally
    DS_TBenchRecord086.Free;
  end;
  DI_TBenchRecord086 := TDictionary<Integer, TBenchRecord086>.Create;
  try
    DI_TBenchRecord086.Add(1, Default(TBenchRecord086));
  finally
    DI_TBenchRecord086.Free;
  end;
  DG_TBenchRecord086 := TDictionary<TGUID, TBenchRecord086>.Create;
  try
    DG_TBenchRecord086.Add(TGUID.Empty, Default(TBenchRecord086));
  finally
    DG_TBenchRecord086.Free;
  end;
  DS_TBenchRecord087 := TDictionary<string, TBenchRecord087>.Create;
  try
    DS_TBenchRecord087.Add('key', Default(TBenchRecord087));
  finally
    DS_TBenchRecord087.Free;
  end;
  DI_TBenchRecord087 := TDictionary<Integer, TBenchRecord087>.Create;
  try
    DI_TBenchRecord087.Add(1, Default(TBenchRecord087));
  finally
    DI_TBenchRecord087.Free;
  end;
  DG_TBenchRecord087 := TDictionary<TGUID, TBenchRecord087>.Create;
  try
    DG_TBenchRecord087.Add(TGUID.Empty, Default(TBenchRecord087));
  finally
    DG_TBenchRecord087.Free;
  end;
  DS_TBenchRecord088 := TDictionary<string, TBenchRecord088>.Create;
  try
    DS_TBenchRecord088.Add('key', Default(TBenchRecord088));
  finally
    DS_TBenchRecord088.Free;
  end;
  DI_TBenchRecord088 := TDictionary<Integer, TBenchRecord088>.Create;
  try
    DI_TBenchRecord088.Add(1, Default(TBenchRecord088));
  finally
    DI_TBenchRecord088.Free;
  end;
  DG_TBenchRecord088 := TDictionary<TGUID, TBenchRecord088>.Create;
  try
    DG_TBenchRecord088.Add(TGUID.Empty, Default(TBenchRecord088));
  finally
    DG_TBenchRecord088.Free;
  end;
  DS_TBenchRecord089 := TDictionary<string, TBenchRecord089>.Create;
  try
    DS_TBenchRecord089.Add('key', Default(TBenchRecord089));
  finally
    DS_TBenchRecord089.Free;
  end;
  DI_TBenchRecord089 := TDictionary<Integer, TBenchRecord089>.Create;
  try
    DI_TBenchRecord089.Add(1, Default(TBenchRecord089));
  finally
    DI_TBenchRecord089.Free;
  end;
  DG_TBenchRecord089 := TDictionary<TGUID, TBenchRecord089>.Create;
  try
    DG_TBenchRecord089.Add(TGUID.Empty, Default(TBenchRecord089));
  finally
    DG_TBenchRecord089.Free;
  end;
  DS_TBenchRecord090 := TDictionary<string, TBenchRecord090>.Create;
  try
    DS_TBenchRecord090.Add('key', Default(TBenchRecord090));
  finally
    DS_TBenchRecord090.Free;
  end;
  DI_TBenchRecord090 := TDictionary<Integer, TBenchRecord090>.Create;
  try
    DI_TBenchRecord090.Add(1, Default(TBenchRecord090));
  finally
    DI_TBenchRecord090.Free;
  end;
  DG_TBenchRecord090 := TDictionary<TGUID, TBenchRecord090>.Create;
  try
    DG_TBenchRecord090.Add(TGUID.Empty, Default(TBenchRecord090));
  finally
    DG_TBenchRecord090.Free;
  end;
  DS_TBenchRecord091 := TDictionary<string, TBenchRecord091>.Create;
  try
    DS_TBenchRecord091.Add('key', Default(TBenchRecord091));
  finally
    DS_TBenchRecord091.Free;
  end;
  DI_TBenchRecord091 := TDictionary<Integer, TBenchRecord091>.Create;
  try
    DI_TBenchRecord091.Add(1, Default(TBenchRecord091));
  finally
    DI_TBenchRecord091.Free;
  end;
  DG_TBenchRecord091 := TDictionary<TGUID, TBenchRecord091>.Create;
  try
    DG_TBenchRecord091.Add(TGUID.Empty, Default(TBenchRecord091));
  finally
    DG_TBenchRecord091.Free;
  end;
  DS_TBenchRecord092 := TDictionary<string, TBenchRecord092>.Create;
  try
    DS_TBenchRecord092.Add('key', Default(TBenchRecord092));
  finally
    DS_TBenchRecord092.Free;
  end;
  DI_TBenchRecord092 := TDictionary<Integer, TBenchRecord092>.Create;
  try
    DI_TBenchRecord092.Add(1, Default(TBenchRecord092));
  finally
    DI_TBenchRecord092.Free;
  end;
  DG_TBenchRecord092 := TDictionary<TGUID, TBenchRecord092>.Create;
  try
    DG_TBenchRecord092.Add(TGUID.Empty, Default(TBenchRecord092));
  finally
    DG_TBenchRecord092.Free;
  end;
  DS_TBenchRecord093 := TDictionary<string, TBenchRecord093>.Create;
  try
    DS_TBenchRecord093.Add('key', Default(TBenchRecord093));
  finally
    DS_TBenchRecord093.Free;
  end;
  DI_TBenchRecord093 := TDictionary<Integer, TBenchRecord093>.Create;
  try
    DI_TBenchRecord093.Add(1, Default(TBenchRecord093));
  finally
    DI_TBenchRecord093.Free;
  end;
  DG_TBenchRecord093 := TDictionary<TGUID, TBenchRecord093>.Create;
  try
    DG_TBenchRecord093.Add(TGUID.Empty, Default(TBenchRecord093));
  finally
    DG_TBenchRecord093.Free;
  end;
  DS_TBenchRecord094 := TDictionary<string, TBenchRecord094>.Create;
  try
    DS_TBenchRecord094.Add('key', Default(TBenchRecord094));
  finally
    DS_TBenchRecord094.Free;
  end;
  DI_TBenchRecord094 := TDictionary<Integer, TBenchRecord094>.Create;
  try
    DI_TBenchRecord094.Add(1, Default(TBenchRecord094));
  finally
    DI_TBenchRecord094.Free;
  end;
  DG_TBenchRecord094 := TDictionary<TGUID, TBenchRecord094>.Create;
  try
    DG_TBenchRecord094.Add(TGUID.Empty, Default(TBenchRecord094));
  finally
    DG_TBenchRecord094.Free;
  end;
  DS_TBenchRecord095 := TDictionary<string, TBenchRecord095>.Create;
  try
    DS_TBenchRecord095.Add('key', Default(TBenchRecord095));
  finally
    DS_TBenchRecord095.Free;
  end;
  DI_TBenchRecord095 := TDictionary<Integer, TBenchRecord095>.Create;
  try
    DI_TBenchRecord095.Add(1, Default(TBenchRecord095));
  finally
    DI_TBenchRecord095.Free;
  end;
  DG_TBenchRecord095 := TDictionary<TGUID, TBenchRecord095>.Create;
  try
    DG_TBenchRecord095.Add(TGUID.Empty, Default(TBenchRecord095));
  finally
    DG_TBenchRecord095.Free;
  end;
  DS_TBenchRecord096 := TDictionary<string, TBenchRecord096>.Create;
  try
    DS_TBenchRecord096.Add('key', Default(TBenchRecord096));
  finally
    DS_TBenchRecord096.Free;
  end;
  DI_TBenchRecord096 := TDictionary<Integer, TBenchRecord096>.Create;
  try
    DI_TBenchRecord096.Add(1, Default(TBenchRecord096));
  finally
    DI_TBenchRecord096.Free;
  end;
  DG_TBenchRecord096 := TDictionary<TGUID, TBenchRecord096>.Create;
  try
    DG_TBenchRecord096.Add(TGUID.Empty, Default(TBenchRecord096));
  finally
    DG_TBenchRecord096.Free;
  end;
  DS_TBenchRecord097 := TDictionary<string, TBenchRecord097>.Create;
  try
    DS_TBenchRecord097.Add('key', Default(TBenchRecord097));
  finally
    DS_TBenchRecord097.Free;
  end;
  DI_TBenchRecord097 := TDictionary<Integer, TBenchRecord097>.Create;
  try
    DI_TBenchRecord097.Add(1, Default(TBenchRecord097));
  finally
    DI_TBenchRecord097.Free;
  end;
  DG_TBenchRecord097 := TDictionary<TGUID, TBenchRecord097>.Create;
  try
    DG_TBenchRecord097.Add(TGUID.Empty, Default(TBenchRecord097));
  finally
    DG_TBenchRecord097.Free;
  end;
  DS_TBenchRecord098 := TDictionary<string, TBenchRecord098>.Create;
  try
    DS_TBenchRecord098.Add('key', Default(TBenchRecord098));
  finally
    DS_TBenchRecord098.Free;
  end;
  DI_TBenchRecord098 := TDictionary<Integer, TBenchRecord098>.Create;
  try
    DI_TBenchRecord098.Add(1, Default(TBenchRecord098));
  finally
    DI_TBenchRecord098.Free;
  end;
  DG_TBenchRecord098 := TDictionary<TGUID, TBenchRecord098>.Create;
  try
    DG_TBenchRecord098.Add(TGUID.Empty, Default(TBenchRecord098));
  finally
    DG_TBenchRecord098.Free;
  end;
  DS_TBenchRecord099 := TDictionary<string, TBenchRecord099>.Create;
  try
    DS_TBenchRecord099.Add('key', Default(TBenchRecord099));
  finally
    DS_TBenchRecord099.Free;
  end;
  DI_TBenchRecord099 := TDictionary<Integer, TBenchRecord099>.Create;
  try
    DI_TBenchRecord099.Add(1, Default(TBenchRecord099));
  finally
    DI_TBenchRecord099.Free;
  end;
  DG_TBenchRecord099 := TDictionary<TGUID, TBenchRecord099>.Create;
  try
    DG_TBenchRecord099.Add(TGUID.Empty, Default(TBenchRecord099));
  finally
    DG_TBenchRecord099.Free;
  end;
  DS_TBenchRecord100 := TDictionary<string, TBenchRecord100>.Create;
  try
    DS_TBenchRecord100.Add('key', Default(TBenchRecord100));
  finally
    DS_TBenchRecord100.Free;
  end;
  DI_TBenchRecord100 := TDictionary<Integer, TBenchRecord100>.Create;
  try
    DI_TBenchRecord100.Add(1, Default(TBenchRecord100));
  finally
    DI_TBenchRecord100.Free;
  end;
  DG_TBenchRecord100 := TDictionary<TGUID, TBenchRecord100>.Create;
  try
    DG_TBenchRecord100.Add(TGUID.Empty, Default(TBenchRecord100));
  finally
    DG_TBenchRecord100.Free;
  end;
  DS_TBenchRecord101 := TDictionary<string, TBenchRecord101>.Create;
  try
    DS_TBenchRecord101.Add('key', Default(TBenchRecord101));
  finally
    DS_TBenchRecord101.Free;
  end;
  DI_TBenchRecord101 := TDictionary<Integer, TBenchRecord101>.Create;
  try
    DI_TBenchRecord101.Add(1, Default(TBenchRecord101));
  finally
    DI_TBenchRecord101.Free;
  end;
  DG_TBenchRecord101 := TDictionary<TGUID, TBenchRecord101>.Create;
  try
    DG_TBenchRecord101.Add(TGUID.Empty, Default(TBenchRecord101));
  finally
    DG_TBenchRecord101.Free;
  end;
  DS_TBenchRecord102 := TDictionary<string, TBenchRecord102>.Create;
  try
    DS_TBenchRecord102.Add('key', Default(TBenchRecord102));
  finally
    DS_TBenchRecord102.Free;
  end;
  DI_TBenchRecord102 := TDictionary<Integer, TBenchRecord102>.Create;
  try
    DI_TBenchRecord102.Add(1, Default(TBenchRecord102));
  finally
    DI_TBenchRecord102.Free;
  end;
  DG_TBenchRecord102 := TDictionary<TGUID, TBenchRecord102>.Create;
  try
    DG_TBenchRecord102.Add(TGUID.Empty, Default(TBenchRecord102));
  finally
    DG_TBenchRecord102.Free;
  end;
  DS_TBenchRecord103 := TDictionary<string, TBenchRecord103>.Create;
  try
    DS_TBenchRecord103.Add('key', Default(TBenchRecord103));
  finally
    DS_TBenchRecord103.Free;
  end;
  DI_TBenchRecord103 := TDictionary<Integer, TBenchRecord103>.Create;
  try
    DI_TBenchRecord103.Add(1, Default(TBenchRecord103));
  finally
    DI_TBenchRecord103.Free;
  end;
  DG_TBenchRecord103 := TDictionary<TGUID, TBenchRecord103>.Create;
  try
    DG_TBenchRecord103.Add(TGUID.Empty, Default(TBenchRecord103));
  finally
    DG_TBenchRecord103.Free;
  end;
  DS_TBenchRecord104 := TDictionary<string, TBenchRecord104>.Create;
  try
    DS_TBenchRecord104.Add('key', Default(TBenchRecord104));
  finally
    DS_TBenchRecord104.Free;
  end;
  DI_TBenchRecord104 := TDictionary<Integer, TBenchRecord104>.Create;
  try
    DI_TBenchRecord104.Add(1, Default(TBenchRecord104));
  finally
    DI_TBenchRecord104.Free;
  end;
  DG_TBenchRecord104 := TDictionary<TGUID, TBenchRecord104>.Create;
  try
    DG_TBenchRecord104.Add(TGUID.Empty, Default(TBenchRecord104));
  finally
    DG_TBenchRecord104.Free;
  end;
  DS_TBenchRecord105 := TDictionary<string, TBenchRecord105>.Create;
  try
    DS_TBenchRecord105.Add('key', Default(TBenchRecord105));
  finally
    DS_TBenchRecord105.Free;
  end;
  DI_TBenchRecord105 := TDictionary<Integer, TBenchRecord105>.Create;
  try
    DI_TBenchRecord105.Add(1, Default(TBenchRecord105));
  finally
    DI_TBenchRecord105.Free;
  end;
  DG_TBenchRecord105 := TDictionary<TGUID, TBenchRecord105>.Create;
  try
    DG_TBenchRecord105.Add(TGUID.Empty, Default(TBenchRecord105));
  finally
    DG_TBenchRecord105.Free;
  end;
  DS_TBenchRecord106 := TDictionary<string, TBenchRecord106>.Create;
  try
    DS_TBenchRecord106.Add('key', Default(TBenchRecord106));
  finally
    DS_TBenchRecord106.Free;
  end;
  DI_TBenchRecord106 := TDictionary<Integer, TBenchRecord106>.Create;
  try
    DI_TBenchRecord106.Add(1, Default(TBenchRecord106));
  finally
    DI_TBenchRecord106.Free;
  end;
  DG_TBenchRecord106 := TDictionary<TGUID, TBenchRecord106>.Create;
  try
    DG_TBenchRecord106.Add(TGUID.Empty, Default(TBenchRecord106));
  finally
    DG_TBenchRecord106.Free;
  end;
  DS_TBenchRecord107 := TDictionary<string, TBenchRecord107>.Create;
  try
    DS_TBenchRecord107.Add('key', Default(TBenchRecord107));
  finally
    DS_TBenchRecord107.Free;
  end;
  DI_TBenchRecord107 := TDictionary<Integer, TBenchRecord107>.Create;
  try
    DI_TBenchRecord107.Add(1, Default(TBenchRecord107));
  finally
    DI_TBenchRecord107.Free;
  end;
  DG_TBenchRecord107 := TDictionary<TGUID, TBenchRecord107>.Create;
  try
    DG_TBenchRecord107.Add(TGUID.Empty, Default(TBenchRecord107));
  finally
    DG_TBenchRecord107.Free;
  end;
  DS_TBenchRecord108 := TDictionary<string, TBenchRecord108>.Create;
  try
    DS_TBenchRecord108.Add('key', Default(TBenchRecord108));
  finally
    DS_TBenchRecord108.Free;
  end;
  DI_TBenchRecord108 := TDictionary<Integer, TBenchRecord108>.Create;
  try
    DI_TBenchRecord108.Add(1, Default(TBenchRecord108));
  finally
    DI_TBenchRecord108.Free;
  end;
  DG_TBenchRecord108 := TDictionary<TGUID, TBenchRecord108>.Create;
  try
    DG_TBenchRecord108.Add(TGUID.Empty, Default(TBenchRecord108));
  finally
    DG_TBenchRecord108.Free;
  end;
  DS_TBenchRecord109 := TDictionary<string, TBenchRecord109>.Create;
  try
    DS_TBenchRecord109.Add('key', Default(TBenchRecord109));
  finally
    DS_TBenchRecord109.Free;
  end;
  DI_TBenchRecord109 := TDictionary<Integer, TBenchRecord109>.Create;
  try
    DI_TBenchRecord109.Add(1, Default(TBenchRecord109));
  finally
    DI_TBenchRecord109.Free;
  end;
  DG_TBenchRecord109 := TDictionary<TGUID, TBenchRecord109>.Create;
  try
    DG_TBenchRecord109.Add(TGUID.Empty, Default(TBenchRecord109));
  finally
    DG_TBenchRecord109.Free;
  end;
  DS_TBenchRecord110 := TDictionary<string, TBenchRecord110>.Create;
  try
    DS_TBenchRecord110.Add('key', Default(TBenchRecord110));
  finally
    DS_TBenchRecord110.Free;
  end;
  DI_TBenchRecord110 := TDictionary<Integer, TBenchRecord110>.Create;
  try
    DI_TBenchRecord110.Add(1, Default(TBenchRecord110));
  finally
    DI_TBenchRecord110.Free;
  end;
  DG_TBenchRecord110 := TDictionary<TGUID, TBenchRecord110>.Create;
  try
    DG_TBenchRecord110.Add(TGUID.Empty, Default(TBenchRecord110));
  finally
    DG_TBenchRecord110.Free;
  end;
  DS_TBenchRecord111 := TDictionary<string, TBenchRecord111>.Create;
  try
    DS_TBenchRecord111.Add('key', Default(TBenchRecord111));
  finally
    DS_TBenchRecord111.Free;
  end;
  DI_TBenchRecord111 := TDictionary<Integer, TBenchRecord111>.Create;
  try
    DI_TBenchRecord111.Add(1, Default(TBenchRecord111));
  finally
    DI_TBenchRecord111.Free;
  end;
  DG_TBenchRecord111 := TDictionary<TGUID, TBenchRecord111>.Create;
  try
    DG_TBenchRecord111.Add(TGUID.Empty, Default(TBenchRecord111));
  finally
    DG_TBenchRecord111.Free;
  end;
  DS_TBenchRecord112 := TDictionary<string, TBenchRecord112>.Create;
  try
    DS_TBenchRecord112.Add('key', Default(TBenchRecord112));
  finally
    DS_TBenchRecord112.Free;
  end;
  DI_TBenchRecord112 := TDictionary<Integer, TBenchRecord112>.Create;
  try
    DI_TBenchRecord112.Add(1, Default(TBenchRecord112));
  finally
    DI_TBenchRecord112.Free;
  end;
  DG_TBenchRecord112 := TDictionary<TGUID, TBenchRecord112>.Create;
  try
    DG_TBenchRecord112.Add(TGUID.Empty, Default(TBenchRecord112));
  finally
    DG_TBenchRecord112.Free;
  end;
  DS_TBenchRecord113 := TDictionary<string, TBenchRecord113>.Create;
  try
    DS_TBenchRecord113.Add('key', Default(TBenchRecord113));
  finally
    DS_TBenchRecord113.Free;
  end;
  DI_TBenchRecord113 := TDictionary<Integer, TBenchRecord113>.Create;
  try
    DI_TBenchRecord113.Add(1, Default(TBenchRecord113));
  finally
    DI_TBenchRecord113.Free;
  end;
  DG_TBenchRecord113 := TDictionary<TGUID, TBenchRecord113>.Create;
  try
    DG_TBenchRecord113.Add(TGUID.Empty, Default(TBenchRecord113));
  finally
    DG_TBenchRecord113.Free;
  end;
  DS_TBenchRecord114 := TDictionary<string, TBenchRecord114>.Create;
  try
    DS_TBenchRecord114.Add('key', Default(TBenchRecord114));
  finally
    DS_TBenchRecord114.Free;
  end;
  DI_TBenchRecord114 := TDictionary<Integer, TBenchRecord114>.Create;
  try
    DI_TBenchRecord114.Add(1, Default(TBenchRecord114));
  finally
    DI_TBenchRecord114.Free;
  end;
  DG_TBenchRecord114 := TDictionary<TGUID, TBenchRecord114>.Create;
  try
    DG_TBenchRecord114.Add(TGUID.Empty, Default(TBenchRecord114));
  finally
    DG_TBenchRecord114.Free;
  end;
  DS_TBenchRecord115 := TDictionary<string, TBenchRecord115>.Create;
  try
    DS_TBenchRecord115.Add('key', Default(TBenchRecord115));
  finally
    DS_TBenchRecord115.Free;
  end;
  DI_TBenchRecord115 := TDictionary<Integer, TBenchRecord115>.Create;
  try
    DI_TBenchRecord115.Add(1, Default(TBenchRecord115));
  finally
    DI_TBenchRecord115.Free;
  end;
  DG_TBenchRecord115 := TDictionary<TGUID, TBenchRecord115>.Create;
  try
    DG_TBenchRecord115.Add(TGUID.Empty, Default(TBenchRecord115));
  finally
    DG_TBenchRecord115.Free;
  end;
  DS_TBenchRecord116 := TDictionary<string, TBenchRecord116>.Create;
  try
    DS_TBenchRecord116.Add('key', Default(TBenchRecord116));
  finally
    DS_TBenchRecord116.Free;
  end;
  DI_TBenchRecord116 := TDictionary<Integer, TBenchRecord116>.Create;
  try
    DI_TBenchRecord116.Add(1, Default(TBenchRecord116));
  finally
    DI_TBenchRecord116.Free;
  end;
  DG_TBenchRecord116 := TDictionary<TGUID, TBenchRecord116>.Create;
  try
    DG_TBenchRecord116.Add(TGUID.Empty, Default(TBenchRecord116));
  finally
    DG_TBenchRecord116.Free;
  end;
  DS_TBenchRecord117 := TDictionary<string, TBenchRecord117>.Create;
  try
    DS_TBenchRecord117.Add('key', Default(TBenchRecord117));
  finally
    DS_TBenchRecord117.Free;
  end;
  DI_TBenchRecord117 := TDictionary<Integer, TBenchRecord117>.Create;
  try
    DI_TBenchRecord117.Add(1, Default(TBenchRecord117));
  finally
    DI_TBenchRecord117.Free;
  end;
  DG_TBenchRecord117 := TDictionary<TGUID, TBenchRecord117>.Create;
  try
    DG_TBenchRecord117.Add(TGUID.Empty, Default(TBenchRecord117));
  finally
    DG_TBenchRecord117.Free;
  end;
  DS_TBenchRecord118 := TDictionary<string, TBenchRecord118>.Create;
  try
    DS_TBenchRecord118.Add('key', Default(TBenchRecord118));
  finally
    DS_TBenchRecord118.Free;
  end;
  DI_TBenchRecord118 := TDictionary<Integer, TBenchRecord118>.Create;
  try
    DI_TBenchRecord118.Add(1, Default(TBenchRecord118));
  finally
    DI_TBenchRecord118.Free;
  end;
  DG_TBenchRecord118 := TDictionary<TGUID, TBenchRecord118>.Create;
  try
    DG_TBenchRecord118.Add(TGUID.Empty, Default(TBenchRecord118));
  finally
    DG_TBenchRecord118.Free;
  end;
  DS_TBenchRecord119 := TDictionary<string, TBenchRecord119>.Create;
  try
    DS_TBenchRecord119.Add('key', Default(TBenchRecord119));
  finally
    DS_TBenchRecord119.Free;
  end;
  DI_TBenchRecord119 := TDictionary<Integer, TBenchRecord119>.Create;
  try
    DI_TBenchRecord119.Add(1, Default(TBenchRecord119));
  finally
    DI_TBenchRecord119.Free;
  end;
  DG_TBenchRecord119 := TDictionary<TGUID, TBenchRecord119>.Create;
  try
    DG_TBenchRecord119.Add(TGUID.Empty, Default(TBenchRecord119));
  finally
    DG_TBenchRecord119.Free;
  end;
  DS_TBenchRecord120 := TDictionary<string, TBenchRecord120>.Create;
  try
    DS_TBenchRecord120.Add('key', Default(TBenchRecord120));
  finally
    DS_TBenchRecord120.Free;
  end;
  DI_TBenchRecord120 := TDictionary<Integer, TBenchRecord120>.Create;
  try
    DI_TBenchRecord120.Add(1, Default(TBenchRecord120));
  finally
    DI_TBenchRecord120.Free;
  end;
  DG_TBenchRecord120 := TDictionary<TGUID, TBenchRecord120>.Create;
  try
    DG_TBenchRecord120.Add(TGUID.Empty, Default(TBenchRecord120));
  finally
    DG_TBenchRecord120.Free;
  end;
  DS_TBenchRecord121 := TDictionary<string, TBenchRecord121>.Create;
  try
    DS_TBenchRecord121.Add('key', Default(TBenchRecord121));
  finally
    DS_TBenchRecord121.Free;
  end;
  DI_TBenchRecord121 := TDictionary<Integer, TBenchRecord121>.Create;
  try
    DI_TBenchRecord121.Add(1, Default(TBenchRecord121));
  finally
    DI_TBenchRecord121.Free;
  end;
  DG_TBenchRecord121 := TDictionary<TGUID, TBenchRecord121>.Create;
  try
    DG_TBenchRecord121.Add(TGUID.Empty, Default(TBenchRecord121));
  finally
    DG_TBenchRecord121.Free;
  end;
  DS_TBenchRecord122 := TDictionary<string, TBenchRecord122>.Create;
  try
    DS_TBenchRecord122.Add('key', Default(TBenchRecord122));
  finally
    DS_TBenchRecord122.Free;
  end;
  DI_TBenchRecord122 := TDictionary<Integer, TBenchRecord122>.Create;
  try
    DI_TBenchRecord122.Add(1, Default(TBenchRecord122));
  finally
    DI_TBenchRecord122.Free;
  end;
  DG_TBenchRecord122 := TDictionary<TGUID, TBenchRecord122>.Create;
  try
    DG_TBenchRecord122.Add(TGUID.Empty, Default(TBenchRecord122));
  finally
    DG_TBenchRecord122.Free;
  end;
  DS_TBenchRecord123 := TDictionary<string, TBenchRecord123>.Create;
  try
    DS_TBenchRecord123.Add('key', Default(TBenchRecord123));
  finally
    DS_TBenchRecord123.Free;
  end;
  DI_TBenchRecord123 := TDictionary<Integer, TBenchRecord123>.Create;
  try
    DI_TBenchRecord123.Add(1, Default(TBenchRecord123));
  finally
    DI_TBenchRecord123.Free;
  end;
  DG_TBenchRecord123 := TDictionary<TGUID, TBenchRecord123>.Create;
  try
    DG_TBenchRecord123.Add(TGUID.Empty, Default(TBenchRecord123));
  finally
    DG_TBenchRecord123.Free;
  end;
  DS_TBenchRecord124 := TDictionary<string, TBenchRecord124>.Create;
  try
    DS_TBenchRecord124.Add('key', Default(TBenchRecord124));
  finally
    DS_TBenchRecord124.Free;
  end;
  DI_TBenchRecord124 := TDictionary<Integer, TBenchRecord124>.Create;
  try
    DI_TBenchRecord124.Add(1, Default(TBenchRecord124));
  finally
    DI_TBenchRecord124.Free;
  end;
  DG_TBenchRecord124 := TDictionary<TGUID, TBenchRecord124>.Create;
  try
    DG_TBenchRecord124.Add(TGUID.Empty, Default(TBenchRecord124));
  finally
    DG_TBenchRecord124.Free;
  end;
  DS_TBenchRecord125 := TDictionary<string, TBenchRecord125>.Create;
  try
    DS_TBenchRecord125.Add('key', Default(TBenchRecord125));
  finally
    DS_TBenchRecord125.Free;
  end;
  DI_TBenchRecord125 := TDictionary<Integer, TBenchRecord125>.Create;
  try
    DI_TBenchRecord125.Add(1, Default(TBenchRecord125));
  finally
    DI_TBenchRecord125.Free;
  end;
  DG_TBenchRecord125 := TDictionary<TGUID, TBenchRecord125>.Create;
  try
    DG_TBenchRecord125.Add(TGUID.Empty, Default(TBenchRecord125));
  finally
    DG_TBenchRecord125.Free;
  end;
  DS_TBenchRecord126 := TDictionary<string, TBenchRecord126>.Create;
  try
    DS_TBenchRecord126.Add('key', Default(TBenchRecord126));
  finally
    DS_TBenchRecord126.Free;
  end;
  DI_TBenchRecord126 := TDictionary<Integer, TBenchRecord126>.Create;
  try
    DI_TBenchRecord126.Add(1, Default(TBenchRecord126));
  finally
    DI_TBenchRecord126.Free;
  end;
  DG_TBenchRecord126 := TDictionary<TGUID, TBenchRecord126>.Create;
  try
    DG_TBenchRecord126.Add(TGUID.Empty, Default(TBenchRecord126));
  finally
    DG_TBenchRecord126.Free;
  end;
  DS_TBenchRecord127 := TDictionary<string, TBenchRecord127>.Create;
  try
    DS_TBenchRecord127.Add('key', Default(TBenchRecord127));
  finally
    DS_TBenchRecord127.Free;
  end;
  DI_TBenchRecord127 := TDictionary<Integer, TBenchRecord127>.Create;
  try
    DI_TBenchRecord127.Add(1, Default(TBenchRecord127));
  finally
    DI_TBenchRecord127.Free;
  end;
  DG_TBenchRecord127 := TDictionary<TGUID, TBenchRecord127>.Create;
  try
    DG_TBenchRecord127.Add(TGUID.Empty, Default(TBenchRecord127));
  finally
    DG_TBenchRecord127.Free;
  end;
  DS_TBenchRecord128 := TDictionary<string, TBenchRecord128>.Create;
  try
    DS_TBenchRecord128.Add('key', Default(TBenchRecord128));
  finally
    DS_TBenchRecord128.Free;
  end;
  DI_TBenchRecord128 := TDictionary<Integer, TBenchRecord128>.Create;
  try
    DI_TBenchRecord128.Add(1, Default(TBenchRecord128));
  finally
    DI_TBenchRecord128.Free;
  end;
  DG_TBenchRecord128 := TDictionary<TGUID, TBenchRecord128>.Create;
  try
    DG_TBenchRecord128.Add(TGUID.Empty, Default(TBenchRecord128));
  finally
    DG_TBenchRecord128.Free;
  end;
  DS_TBenchRecord129 := TDictionary<string, TBenchRecord129>.Create;
  try
    DS_TBenchRecord129.Add('key', Default(TBenchRecord129));
  finally
    DS_TBenchRecord129.Free;
  end;
  DI_TBenchRecord129 := TDictionary<Integer, TBenchRecord129>.Create;
  try
    DI_TBenchRecord129.Add(1, Default(TBenchRecord129));
  finally
    DI_TBenchRecord129.Free;
  end;
  DG_TBenchRecord129 := TDictionary<TGUID, TBenchRecord129>.Create;
  try
    DG_TBenchRecord129.Add(TGUID.Empty, Default(TBenchRecord129));
  finally
    DG_TBenchRecord129.Free;
  end;
  DS_TBenchRecord130 := TDictionary<string, TBenchRecord130>.Create;
  try
    DS_TBenchRecord130.Add('key', Default(TBenchRecord130));
  finally
    DS_TBenchRecord130.Free;
  end;
  DI_TBenchRecord130 := TDictionary<Integer, TBenchRecord130>.Create;
  try
    DI_TBenchRecord130.Add(1, Default(TBenchRecord130));
  finally
    DI_TBenchRecord130.Free;
  end;
  DG_TBenchRecord130 := TDictionary<TGUID, TBenchRecord130>.Create;
  try
    DG_TBenchRecord130.Add(TGUID.Empty, Default(TBenchRecord130));
  finally
    DG_TBenchRecord130.Free;
  end;
  DS_TBenchRecord131 := TDictionary<string, TBenchRecord131>.Create;
  try
    DS_TBenchRecord131.Add('key', Default(TBenchRecord131));
  finally
    DS_TBenchRecord131.Free;
  end;
  DI_TBenchRecord131 := TDictionary<Integer, TBenchRecord131>.Create;
  try
    DI_TBenchRecord131.Add(1, Default(TBenchRecord131));
  finally
    DI_TBenchRecord131.Free;
  end;
  DG_TBenchRecord131 := TDictionary<TGUID, TBenchRecord131>.Create;
  try
    DG_TBenchRecord131.Add(TGUID.Empty, Default(TBenchRecord131));
  finally
    DG_TBenchRecord131.Free;
  end;
  DS_TBenchRecord132 := TDictionary<string, TBenchRecord132>.Create;
  try
    DS_TBenchRecord132.Add('key', Default(TBenchRecord132));
  finally
    DS_TBenchRecord132.Free;
  end;
  DI_TBenchRecord132 := TDictionary<Integer, TBenchRecord132>.Create;
  try
    DI_TBenchRecord132.Add(1, Default(TBenchRecord132));
  finally
    DI_TBenchRecord132.Free;
  end;
  DG_TBenchRecord132 := TDictionary<TGUID, TBenchRecord132>.Create;
  try
    DG_TBenchRecord132.Add(TGUID.Empty, Default(TBenchRecord132));
  finally
    DG_TBenchRecord132.Free;
  end;
  DS_TBenchRecord133 := TDictionary<string, TBenchRecord133>.Create;
  try
    DS_TBenchRecord133.Add('key', Default(TBenchRecord133));
  finally
    DS_TBenchRecord133.Free;
  end;
  DI_TBenchRecord133 := TDictionary<Integer, TBenchRecord133>.Create;
  try
    DI_TBenchRecord133.Add(1, Default(TBenchRecord133));
  finally
    DI_TBenchRecord133.Free;
  end;
  DG_TBenchRecord133 := TDictionary<TGUID, TBenchRecord133>.Create;
  try
    DG_TBenchRecord133.Add(TGUID.Empty, Default(TBenchRecord133));
  finally
    DG_TBenchRecord133.Free;
  end;
  DS_TBenchRecord134 := TDictionary<string, TBenchRecord134>.Create;
  try
    DS_TBenchRecord134.Add('key', Default(TBenchRecord134));
  finally
    DS_TBenchRecord134.Free;
  end;
  DI_TBenchRecord134 := TDictionary<Integer, TBenchRecord134>.Create;
  try
    DI_TBenchRecord134.Add(1, Default(TBenchRecord134));
  finally
    DI_TBenchRecord134.Free;
  end;
  DG_TBenchRecord134 := TDictionary<TGUID, TBenchRecord134>.Create;
  try
    DG_TBenchRecord134.Add(TGUID.Empty, Default(TBenchRecord134));
  finally
    DG_TBenchRecord134.Free;
  end;
  DS_TBenchRecord135 := TDictionary<string, TBenchRecord135>.Create;
  try
    DS_TBenchRecord135.Add('key', Default(TBenchRecord135));
  finally
    DS_TBenchRecord135.Free;
  end;
  DI_TBenchRecord135 := TDictionary<Integer, TBenchRecord135>.Create;
  try
    DI_TBenchRecord135.Add(1, Default(TBenchRecord135));
  finally
    DI_TBenchRecord135.Free;
  end;
  DG_TBenchRecord135 := TDictionary<TGUID, TBenchRecord135>.Create;
  try
    DG_TBenchRecord135.Add(TGUID.Empty, Default(TBenchRecord135));
  finally
    DG_TBenchRecord135.Free;
  end;
  DS_TBenchRecord136 := TDictionary<string, TBenchRecord136>.Create;
  try
    DS_TBenchRecord136.Add('key', Default(TBenchRecord136));
  finally
    DS_TBenchRecord136.Free;
  end;
  DI_TBenchRecord136 := TDictionary<Integer, TBenchRecord136>.Create;
  try
    DI_TBenchRecord136.Add(1, Default(TBenchRecord136));
  finally
    DI_TBenchRecord136.Free;
  end;
  DG_TBenchRecord136 := TDictionary<TGUID, TBenchRecord136>.Create;
  try
    DG_TBenchRecord136.Add(TGUID.Empty, Default(TBenchRecord136));
  finally
    DG_TBenchRecord136.Free;
  end;
  DS_TBenchRecord137 := TDictionary<string, TBenchRecord137>.Create;
  try
    DS_TBenchRecord137.Add('key', Default(TBenchRecord137));
  finally
    DS_TBenchRecord137.Free;
  end;
  DI_TBenchRecord137 := TDictionary<Integer, TBenchRecord137>.Create;
  try
    DI_TBenchRecord137.Add(1, Default(TBenchRecord137));
  finally
    DI_TBenchRecord137.Free;
  end;
  DG_TBenchRecord137 := TDictionary<TGUID, TBenchRecord137>.Create;
  try
    DG_TBenchRecord137.Add(TGUID.Empty, Default(TBenchRecord137));
  finally
    DG_TBenchRecord137.Free;
  end;
  DS_TBenchRecord138 := TDictionary<string, TBenchRecord138>.Create;
  try
    DS_TBenchRecord138.Add('key', Default(TBenchRecord138));
  finally
    DS_TBenchRecord138.Free;
  end;
  DI_TBenchRecord138 := TDictionary<Integer, TBenchRecord138>.Create;
  try
    DI_TBenchRecord138.Add(1, Default(TBenchRecord138));
  finally
    DI_TBenchRecord138.Free;
  end;
  DG_TBenchRecord138 := TDictionary<TGUID, TBenchRecord138>.Create;
  try
    DG_TBenchRecord138.Add(TGUID.Empty, Default(TBenchRecord138));
  finally
    DG_TBenchRecord138.Free;
  end;
  DS_TBenchRecord139 := TDictionary<string, TBenchRecord139>.Create;
  try
    DS_TBenchRecord139.Add('key', Default(TBenchRecord139));
  finally
    DS_TBenchRecord139.Free;
  end;
  DI_TBenchRecord139 := TDictionary<Integer, TBenchRecord139>.Create;
  try
    DI_TBenchRecord139.Add(1, Default(TBenchRecord139));
  finally
    DI_TBenchRecord139.Free;
  end;
  DG_TBenchRecord139 := TDictionary<TGUID, TBenchRecord139>.Create;
  try
    DG_TBenchRecord139.Add(TGUID.Empty, Default(TBenchRecord139));
  finally
    DG_TBenchRecord139.Free;
  end;
  DS_TBenchRecord140 := TDictionary<string, TBenchRecord140>.Create;
  try
    DS_TBenchRecord140.Add('key', Default(TBenchRecord140));
  finally
    DS_TBenchRecord140.Free;
  end;
  DI_TBenchRecord140 := TDictionary<Integer, TBenchRecord140>.Create;
  try
    DI_TBenchRecord140.Add(1, Default(TBenchRecord140));
  finally
    DI_TBenchRecord140.Free;
  end;
  DG_TBenchRecord140 := TDictionary<TGUID, TBenchRecord140>.Create;
  try
    DG_TBenchRecord140.Add(TGUID.Empty, Default(TBenchRecord140));
  finally
    DG_TBenchRecord140.Free;
  end;
  DS_TBenchRecord141 := TDictionary<string, TBenchRecord141>.Create;
  try
    DS_TBenchRecord141.Add('key', Default(TBenchRecord141));
  finally
    DS_TBenchRecord141.Free;
  end;
  DI_TBenchRecord141 := TDictionary<Integer, TBenchRecord141>.Create;
  try
    DI_TBenchRecord141.Add(1, Default(TBenchRecord141));
  finally
    DI_TBenchRecord141.Free;
  end;
  DG_TBenchRecord141 := TDictionary<TGUID, TBenchRecord141>.Create;
  try
    DG_TBenchRecord141.Add(TGUID.Empty, Default(TBenchRecord141));
  finally
    DG_TBenchRecord141.Free;
  end;
  DS_TBenchRecord142 := TDictionary<string, TBenchRecord142>.Create;
  try
    DS_TBenchRecord142.Add('key', Default(TBenchRecord142));
  finally
    DS_TBenchRecord142.Free;
  end;
  DI_TBenchRecord142 := TDictionary<Integer, TBenchRecord142>.Create;
  try
    DI_TBenchRecord142.Add(1, Default(TBenchRecord142));
  finally
    DI_TBenchRecord142.Free;
  end;
  DG_TBenchRecord142 := TDictionary<TGUID, TBenchRecord142>.Create;
  try
    DG_TBenchRecord142.Add(TGUID.Empty, Default(TBenchRecord142));
  finally
    DG_TBenchRecord142.Free;
  end;
  DS_TBenchRecord143 := TDictionary<string, TBenchRecord143>.Create;
  try
    DS_TBenchRecord143.Add('key', Default(TBenchRecord143));
  finally
    DS_TBenchRecord143.Free;
  end;
  DI_TBenchRecord143 := TDictionary<Integer, TBenchRecord143>.Create;
  try
    DI_TBenchRecord143.Add(1, Default(TBenchRecord143));
  finally
    DI_TBenchRecord143.Free;
  end;
  DG_TBenchRecord143 := TDictionary<TGUID, TBenchRecord143>.Create;
  try
    DG_TBenchRecord143.Add(TGUID.Empty, Default(TBenchRecord143));
  finally
    DG_TBenchRecord143.Free;
  end;
  DS_TBenchRecord144 := TDictionary<string, TBenchRecord144>.Create;
  try
    DS_TBenchRecord144.Add('key', Default(TBenchRecord144));
  finally
    DS_TBenchRecord144.Free;
  end;
  DI_TBenchRecord144 := TDictionary<Integer, TBenchRecord144>.Create;
  try
    DI_TBenchRecord144.Add(1, Default(TBenchRecord144));
  finally
    DI_TBenchRecord144.Free;
  end;
  DG_TBenchRecord144 := TDictionary<TGUID, TBenchRecord144>.Create;
  try
    DG_TBenchRecord144.Add(TGUID.Empty, Default(TBenchRecord144));
  finally
    DG_TBenchRecord144.Free;
  end;
  DS_TBenchRecord145 := TDictionary<string, TBenchRecord145>.Create;
  try
    DS_TBenchRecord145.Add('key', Default(TBenchRecord145));
  finally
    DS_TBenchRecord145.Free;
  end;
  DI_TBenchRecord145 := TDictionary<Integer, TBenchRecord145>.Create;
  try
    DI_TBenchRecord145.Add(1, Default(TBenchRecord145));
  finally
    DI_TBenchRecord145.Free;
  end;
  DG_TBenchRecord145 := TDictionary<TGUID, TBenchRecord145>.Create;
  try
    DG_TBenchRecord145.Add(TGUID.Empty, Default(TBenchRecord145));
  finally
    DG_TBenchRecord145.Free;
  end;
  DS_TBenchRecord146 := TDictionary<string, TBenchRecord146>.Create;
  try
    DS_TBenchRecord146.Add('key', Default(TBenchRecord146));
  finally
    DS_TBenchRecord146.Free;
  end;
  DI_TBenchRecord146 := TDictionary<Integer, TBenchRecord146>.Create;
  try
    DI_TBenchRecord146.Add(1, Default(TBenchRecord146));
  finally
    DI_TBenchRecord146.Free;
  end;
  DG_TBenchRecord146 := TDictionary<TGUID, TBenchRecord146>.Create;
  try
    DG_TBenchRecord146.Add(TGUID.Empty, Default(TBenchRecord146));
  finally
    DG_TBenchRecord146.Free;
  end;
  DS_TBenchRecord147 := TDictionary<string, TBenchRecord147>.Create;
  try
    DS_TBenchRecord147.Add('key', Default(TBenchRecord147));
  finally
    DS_TBenchRecord147.Free;
  end;
  DI_TBenchRecord147 := TDictionary<Integer, TBenchRecord147>.Create;
  try
    DI_TBenchRecord147.Add(1, Default(TBenchRecord147));
  finally
    DI_TBenchRecord147.Free;
  end;
  DG_TBenchRecord147 := TDictionary<TGUID, TBenchRecord147>.Create;
  try
    DG_TBenchRecord147.Add(TGUID.Empty, Default(TBenchRecord147));
  finally
    DG_TBenchRecord147.Free;
  end;
  DS_TBenchRecord148 := TDictionary<string, TBenchRecord148>.Create;
  try
    DS_TBenchRecord148.Add('key', Default(TBenchRecord148));
  finally
    DS_TBenchRecord148.Free;
  end;
  DI_TBenchRecord148 := TDictionary<Integer, TBenchRecord148>.Create;
  try
    DI_TBenchRecord148.Add(1, Default(TBenchRecord148));
  finally
    DI_TBenchRecord148.Free;
  end;
  DG_TBenchRecord148 := TDictionary<TGUID, TBenchRecord148>.Create;
  try
    DG_TBenchRecord148.Add(TGUID.Empty, Default(TBenchRecord148));
  finally
    DG_TBenchRecord148.Free;
  end;
  DS_TBenchRecord149 := TDictionary<string, TBenchRecord149>.Create;
  try
    DS_TBenchRecord149.Add('key', Default(TBenchRecord149));
  finally
    DS_TBenchRecord149.Free;
  end;
  DI_TBenchRecord149 := TDictionary<Integer, TBenchRecord149>.Create;
  try
    DI_TBenchRecord149.Add(1, Default(TBenchRecord149));
  finally
    DI_TBenchRecord149.Free;
  end;
  DG_TBenchRecord149 := TDictionary<TGUID, TBenchRecord149>.Create;
  try
    DG_TBenchRecord149.Add(TGUID.Empty, Default(TBenchRecord149));
  finally
    DG_TBenchRecord149.Free;
  end;
  DS_TBenchRecord150 := TDictionary<string, TBenchRecord150>.Create;
  try
    DS_TBenchRecord150.Add('key', Default(TBenchRecord150));
  finally
    DS_TBenchRecord150.Free;
  end;
  DI_TBenchRecord150 := TDictionary<Integer, TBenchRecord150>.Create;
  try
    DI_TBenchRecord150.Add(1, Default(TBenchRecord150));
  finally
    DI_TBenchRecord150.Free;
  end;
  DG_TBenchRecord150 := TDictionary<TGUID, TBenchRecord150>.Create;
  try
    DG_TBenchRecord150.Add(TGUID.Empty, Default(TBenchRecord150));
  finally
    DG_TBenchRecord150.Free;
  end;
  DS_TBenchRecord151 := TDictionary<string, TBenchRecord151>.Create;
  try
    DS_TBenchRecord151.Add('key', Default(TBenchRecord151));
  finally
    DS_TBenchRecord151.Free;
  end;
  DI_TBenchRecord151 := TDictionary<Integer, TBenchRecord151>.Create;
  try
    DI_TBenchRecord151.Add(1, Default(TBenchRecord151));
  finally
    DI_TBenchRecord151.Free;
  end;
  DG_TBenchRecord151 := TDictionary<TGUID, TBenchRecord151>.Create;
  try
    DG_TBenchRecord151.Add(TGUID.Empty, Default(TBenchRecord151));
  finally
    DG_TBenchRecord151.Free;
  end;
  DS_TBenchRecord152 := TDictionary<string, TBenchRecord152>.Create;
  try
    DS_TBenchRecord152.Add('key', Default(TBenchRecord152));
  finally
    DS_TBenchRecord152.Free;
  end;
  DI_TBenchRecord152 := TDictionary<Integer, TBenchRecord152>.Create;
  try
    DI_TBenchRecord152.Add(1, Default(TBenchRecord152));
  finally
    DI_TBenchRecord152.Free;
  end;
  DG_TBenchRecord152 := TDictionary<TGUID, TBenchRecord152>.Create;
  try
    DG_TBenchRecord152.Add(TGUID.Empty, Default(TBenchRecord152));
  finally
    DG_TBenchRecord152.Free;
  end;
  DS_TBenchRecord153 := TDictionary<string, TBenchRecord153>.Create;
  try
    DS_TBenchRecord153.Add('key', Default(TBenchRecord153));
  finally
    DS_TBenchRecord153.Free;
  end;
  DI_TBenchRecord153 := TDictionary<Integer, TBenchRecord153>.Create;
  try
    DI_TBenchRecord153.Add(1, Default(TBenchRecord153));
  finally
    DI_TBenchRecord153.Free;
  end;
  DG_TBenchRecord153 := TDictionary<TGUID, TBenchRecord153>.Create;
  try
    DG_TBenchRecord153.Add(TGUID.Empty, Default(TBenchRecord153));
  finally
    DG_TBenchRecord153.Free;
  end;
  DS_TBenchRecord154 := TDictionary<string, TBenchRecord154>.Create;
  try
    DS_TBenchRecord154.Add('key', Default(TBenchRecord154));
  finally
    DS_TBenchRecord154.Free;
  end;
  DI_TBenchRecord154 := TDictionary<Integer, TBenchRecord154>.Create;
  try
    DI_TBenchRecord154.Add(1, Default(TBenchRecord154));
  finally
    DI_TBenchRecord154.Free;
  end;
  DG_TBenchRecord154 := TDictionary<TGUID, TBenchRecord154>.Create;
  try
    DG_TBenchRecord154.Add(TGUID.Empty, Default(TBenchRecord154));
  finally
    DG_TBenchRecord154.Free;
  end;
  DS_TBenchRecord155 := TDictionary<string, TBenchRecord155>.Create;
  try
    DS_TBenchRecord155.Add('key', Default(TBenchRecord155));
  finally
    DS_TBenchRecord155.Free;
  end;
  DI_TBenchRecord155 := TDictionary<Integer, TBenchRecord155>.Create;
  try
    DI_TBenchRecord155.Add(1, Default(TBenchRecord155));
  finally
    DI_TBenchRecord155.Free;
  end;
  DG_TBenchRecord155 := TDictionary<TGUID, TBenchRecord155>.Create;
  try
    DG_TBenchRecord155.Add(TGUID.Empty, Default(TBenchRecord155));
  finally
    DG_TBenchRecord155.Free;
  end;
  DS_TBenchRecord156 := TDictionary<string, TBenchRecord156>.Create;
  try
    DS_TBenchRecord156.Add('key', Default(TBenchRecord156));
  finally
    DS_TBenchRecord156.Free;
  end;
  DI_TBenchRecord156 := TDictionary<Integer, TBenchRecord156>.Create;
  try
    DI_TBenchRecord156.Add(1, Default(TBenchRecord156));
  finally
    DI_TBenchRecord156.Free;
  end;
  DG_TBenchRecord156 := TDictionary<TGUID, TBenchRecord156>.Create;
  try
    DG_TBenchRecord156.Add(TGUID.Empty, Default(TBenchRecord156));
  finally
    DG_TBenchRecord156.Free;
  end;
  DS_TBenchRecord157 := TDictionary<string, TBenchRecord157>.Create;
  try
    DS_TBenchRecord157.Add('key', Default(TBenchRecord157));
  finally
    DS_TBenchRecord157.Free;
  end;
  DI_TBenchRecord157 := TDictionary<Integer, TBenchRecord157>.Create;
  try
    DI_TBenchRecord157.Add(1, Default(TBenchRecord157));
  finally
    DI_TBenchRecord157.Free;
  end;
  DG_TBenchRecord157 := TDictionary<TGUID, TBenchRecord157>.Create;
  try
    DG_TBenchRecord157.Add(TGUID.Empty, Default(TBenchRecord157));
  finally
    DG_TBenchRecord157.Free;
  end;
  DS_TBenchRecord158 := TDictionary<string, TBenchRecord158>.Create;
  try
    DS_TBenchRecord158.Add('key', Default(TBenchRecord158));
  finally
    DS_TBenchRecord158.Free;
  end;
  DI_TBenchRecord158 := TDictionary<Integer, TBenchRecord158>.Create;
  try
    DI_TBenchRecord158.Add(1, Default(TBenchRecord158));
  finally
    DI_TBenchRecord158.Free;
  end;
  DG_TBenchRecord158 := TDictionary<TGUID, TBenchRecord158>.Create;
  try
    DG_TBenchRecord158.Add(TGUID.Empty, Default(TBenchRecord158));
  finally
    DG_TBenchRecord158.Free;
  end;
  DS_TBenchRecord159 := TDictionary<string, TBenchRecord159>.Create;
  try
    DS_TBenchRecord159.Add('key', Default(TBenchRecord159));
  finally
    DS_TBenchRecord159.Free;
  end;
  DI_TBenchRecord159 := TDictionary<Integer, TBenchRecord159>.Create;
  try
    DI_TBenchRecord159.Add(1, Default(TBenchRecord159));
  finally
    DI_TBenchRecord159.Free;
  end;
  DG_TBenchRecord159 := TDictionary<TGUID, TBenchRecord159>.Create;
  try
    DG_TBenchRecord159.Add(TGUID.Empty, Default(TBenchRecord159));
  finally
    DG_TBenchRecord159.Free;
  end;
  DS_TBenchRecord160 := TDictionary<string, TBenchRecord160>.Create;
  try
    DS_TBenchRecord160.Add('key', Default(TBenchRecord160));
  finally
    DS_TBenchRecord160.Free;
  end;
  DI_TBenchRecord160 := TDictionary<Integer, TBenchRecord160>.Create;
  try
    DI_TBenchRecord160.Add(1, Default(TBenchRecord160));
  finally
    DI_TBenchRecord160.Free;
  end;
  DG_TBenchRecord160 := TDictionary<TGUID, TBenchRecord160>.Create;
  try
    DG_TBenchRecord160.Add(TGUID.Empty, Default(TBenchRecord160));
  finally
    DG_TBenchRecord160.Free;
  end;
  DS_TBenchRecord161 := TDictionary<string, TBenchRecord161>.Create;
  try
    DS_TBenchRecord161.Add('key', Default(TBenchRecord161));
  finally
    DS_TBenchRecord161.Free;
  end;
  DI_TBenchRecord161 := TDictionary<Integer, TBenchRecord161>.Create;
  try
    DI_TBenchRecord161.Add(1, Default(TBenchRecord161));
  finally
    DI_TBenchRecord161.Free;
  end;
  DG_TBenchRecord161 := TDictionary<TGUID, TBenchRecord161>.Create;
  try
    DG_TBenchRecord161.Add(TGUID.Empty, Default(TBenchRecord161));
  finally
    DG_TBenchRecord161.Free;
  end;
  DS_TBenchRecord162 := TDictionary<string, TBenchRecord162>.Create;
  try
    DS_TBenchRecord162.Add('key', Default(TBenchRecord162));
  finally
    DS_TBenchRecord162.Free;
  end;
  DI_TBenchRecord162 := TDictionary<Integer, TBenchRecord162>.Create;
  try
    DI_TBenchRecord162.Add(1, Default(TBenchRecord162));
  finally
    DI_TBenchRecord162.Free;
  end;
  DG_TBenchRecord162 := TDictionary<TGUID, TBenchRecord162>.Create;
  try
    DG_TBenchRecord162.Add(TGUID.Empty, Default(TBenchRecord162));
  finally
    DG_TBenchRecord162.Free;
  end;
  DS_TBenchRecord163 := TDictionary<string, TBenchRecord163>.Create;
  try
    DS_TBenchRecord163.Add('key', Default(TBenchRecord163));
  finally
    DS_TBenchRecord163.Free;
  end;
  DI_TBenchRecord163 := TDictionary<Integer, TBenchRecord163>.Create;
  try
    DI_TBenchRecord163.Add(1, Default(TBenchRecord163));
  finally
    DI_TBenchRecord163.Free;
  end;
  DG_TBenchRecord163 := TDictionary<TGUID, TBenchRecord163>.Create;
  try
    DG_TBenchRecord163.Add(TGUID.Empty, Default(TBenchRecord163));
  finally
    DG_TBenchRecord163.Free;
  end;
  DS_TBenchRecord164 := TDictionary<string, TBenchRecord164>.Create;
  try
    DS_TBenchRecord164.Add('key', Default(TBenchRecord164));
  finally
    DS_TBenchRecord164.Free;
  end;
  DI_TBenchRecord164 := TDictionary<Integer, TBenchRecord164>.Create;
  try
    DI_TBenchRecord164.Add(1, Default(TBenchRecord164));
  finally
    DI_TBenchRecord164.Free;
  end;
  DG_TBenchRecord164 := TDictionary<TGUID, TBenchRecord164>.Create;
  try
    DG_TBenchRecord164.Add(TGUID.Empty, Default(TBenchRecord164));
  finally
    DG_TBenchRecord164.Free;
  end;
  DS_TBenchRecord165 := TDictionary<string, TBenchRecord165>.Create;
  try
    DS_TBenchRecord165.Add('key', Default(TBenchRecord165));
  finally
    DS_TBenchRecord165.Free;
  end;
  DI_TBenchRecord165 := TDictionary<Integer, TBenchRecord165>.Create;
  try
    DI_TBenchRecord165.Add(1, Default(TBenchRecord165));
  finally
    DI_TBenchRecord165.Free;
  end;
  DG_TBenchRecord165 := TDictionary<TGUID, TBenchRecord165>.Create;
  try
    DG_TBenchRecord165.Add(TGUID.Empty, Default(TBenchRecord165));
  finally
    DG_TBenchRecord165.Free;
  end;
  DS_TBenchRecord166 := TDictionary<string, TBenchRecord166>.Create;
  try
    DS_TBenchRecord166.Add('key', Default(TBenchRecord166));
  finally
    DS_TBenchRecord166.Free;
  end;
  DI_TBenchRecord166 := TDictionary<Integer, TBenchRecord166>.Create;
  try
    DI_TBenchRecord166.Add(1, Default(TBenchRecord166));
  finally
    DI_TBenchRecord166.Free;
  end;
  DG_TBenchRecord166 := TDictionary<TGUID, TBenchRecord166>.Create;
  try
    DG_TBenchRecord166.Add(TGUID.Empty, Default(TBenchRecord166));
  finally
    DG_TBenchRecord166.Free;
  end;
  DS_TBenchRecord167 := TDictionary<string, TBenchRecord167>.Create;
  try
    DS_TBenchRecord167.Add('key', Default(TBenchRecord167));
  finally
    DS_TBenchRecord167.Free;
  end;
  DI_TBenchRecord167 := TDictionary<Integer, TBenchRecord167>.Create;
  try
    DI_TBenchRecord167.Add(1, Default(TBenchRecord167));
  finally
    DI_TBenchRecord167.Free;
  end;
  DG_TBenchRecord167 := TDictionary<TGUID, TBenchRecord167>.Create;
  try
    DG_TBenchRecord167.Add(TGUID.Empty, Default(TBenchRecord167));
  finally
    DG_TBenchRecord167.Free;
  end;
  DS_TBenchRecord168 := TDictionary<string, TBenchRecord168>.Create;
  try
    DS_TBenchRecord168.Add('key', Default(TBenchRecord168));
  finally
    DS_TBenchRecord168.Free;
  end;
  DI_TBenchRecord168 := TDictionary<Integer, TBenchRecord168>.Create;
  try
    DI_TBenchRecord168.Add(1, Default(TBenchRecord168));
  finally
    DI_TBenchRecord168.Free;
  end;
  DG_TBenchRecord168 := TDictionary<TGUID, TBenchRecord168>.Create;
  try
    DG_TBenchRecord168.Add(TGUID.Empty, Default(TBenchRecord168));
  finally
    DG_TBenchRecord168.Free;
  end;
  DS_TBenchRecord169 := TDictionary<string, TBenchRecord169>.Create;
  try
    DS_TBenchRecord169.Add('key', Default(TBenchRecord169));
  finally
    DS_TBenchRecord169.Free;
  end;
  DI_TBenchRecord169 := TDictionary<Integer, TBenchRecord169>.Create;
  try
    DI_TBenchRecord169.Add(1, Default(TBenchRecord169));
  finally
    DI_TBenchRecord169.Free;
  end;
  DG_TBenchRecord169 := TDictionary<TGUID, TBenchRecord169>.Create;
  try
    DG_TBenchRecord169.Add(TGUID.Empty, Default(TBenchRecord169));
  finally
    DG_TBenchRecord169.Free;
  end;
  DS_TBenchRecord170 := TDictionary<string, TBenchRecord170>.Create;
  try
    DS_TBenchRecord170.Add('key', Default(TBenchRecord170));
  finally
    DS_TBenchRecord170.Free;
  end;
  DI_TBenchRecord170 := TDictionary<Integer, TBenchRecord170>.Create;
  try
    DI_TBenchRecord170.Add(1, Default(TBenchRecord170));
  finally
    DI_TBenchRecord170.Free;
  end;
  DG_TBenchRecord170 := TDictionary<TGUID, TBenchRecord170>.Create;
  try
    DG_TBenchRecord170.Add(TGUID.Empty, Default(TBenchRecord170));
  finally
    DG_TBenchRecord170.Free;
  end;
  DS_TBenchRecord171 := TDictionary<string, TBenchRecord171>.Create;
  try
    DS_TBenchRecord171.Add('key', Default(TBenchRecord171));
  finally
    DS_TBenchRecord171.Free;
  end;
  DI_TBenchRecord171 := TDictionary<Integer, TBenchRecord171>.Create;
  try
    DI_TBenchRecord171.Add(1, Default(TBenchRecord171));
  finally
    DI_TBenchRecord171.Free;
  end;
  DG_TBenchRecord171 := TDictionary<TGUID, TBenchRecord171>.Create;
  try
    DG_TBenchRecord171.Add(TGUID.Empty, Default(TBenchRecord171));
  finally
    DG_TBenchRecord171.Free;
  end;
  DS_TBenchRecord172 := TDictionary<string, TBenchRecord172>.Create;
  try
    DS_TBenchRecord172.Add('key', Default(TBenchRecord172));
  finally
    DS_TBenchRecord172.Free;
  end;
  DI_TBenchRecord172 := TDictionary<Integer, TBenchRecord172>.Create;
  try
    DI_TBenchRecord172.Add(1, Default(TBenchRecord172));
  finally
    DI_TBenchRecord172.Free;
  end;
  DG_TBenchRecord172 := TDictionary<TGUID, TBenchRecord172>.Create;
  try
    DG_TBenchRecord172.Add(TGUID.Empty, Default(TBenchRecord172));
  finally
    DG_TBenchRecord172.Free;
  end;
  DS_TBenchRecord173 := TDictionary<string, TBenchRecord173>.Create;
  try
    DS_TBenchRecord173.Add('key', Default(TBenchRecord173));
  finally
    DS_TBenchRecord173.Free;
  end;
  DI_TBenchRecord173 := TDictionary<Integer, TBenchRecord173>.Create;
  try
    DI_TBenchRecord173.Add(1, Default(TBenchRecord173));
  finally
    DI_TBenchRecord173.Free;
  end;
  DG_TBenchRecord173 := TDictionary<TGUID, TBenchRecord173>.Create;
  try
    DG_TBenchRecord173.Add(TGUID.Empty, Default(TBenchRecord173));
  finally
    DG_TBenchRecord173.Free;
  end;
  DS_TBenchRecord174 := TDictionary<string, TBenchRecord174>.Create;
  try
    DS_TBenchRecord174.Add('key', Default(TBenchRecord174));
  finally
    DS_TBenchRecord174.Free;
  end;
  DI_TBenchRecord174 := TDictionary<Integer, TBenchRecord174>.Create;
  try
    DI_TBenchRecord174.Add(1, Default(TBenchRecord174));
  finally
    DI_TBenchRecord174.Free;
  end;
  DG_TBenchRecord174 := TDictionary<TGUID, TBenchRecord174>.Create;
  try
    DG_TBenchRecord174.Add(TGUID.Empty, Default(TBenchRecord174));
  finally
    DG_TBenchRecord174.Free;
  end;
  DS_TBenchRecord175 := TDictionary<string, TBenchRecord175>.Create;
  try
    DS_TBenchRecord175.Add('key', Default(TBenchRecord175));
  finally
    DS_TBenchRecord175.Free;
  end;
  DI_TBenchRecord175 := TDictionary<Integer, TBenchRecord175>.Create;
  try
    DI_TBenchRecord175.Add(1, Default(TBenchRecord175));
  finally
    DI_TBenchRecord175.Free;
  end;
  DG_TBenchRecord175 := TDictionary<TGUID, TBenchRecord175>.Create;
  try
    DG_TBenchRecord175.Add(TGUID.Empty, Default(TBenchRecord175));
  finally
    DG_TBenchRecord175.Free;
  end;
  DS_TBenchRecord176 := TDictionary<string, TBenchRecord176>.Create;
  try
    DS_TBenchRecord176.Add('key', Default(TBenchRecord176));
  finally
    DS_TBenchRecord176.Free;
  end;
  DI_TBenchRecord176 := TDictionary<Integer, TBenchRecord176>.Create;
  try
    DI_TBenchRecord176.Add(1, Default(TBenchRecord176));
  finally
    DI_TBenchRecord176.Free;
  end;
  DG_TBenchRecord176 := TDictionary<TGUID, TBenchRecord176>.Create;
  try
    DG_TBenchRecord176.Add(TGUID.Empty, Default(TBenchRecord176));
  finally
    DG_TBenchRecord176.Free;
  end;
  DS_TBenchRecord177 := TDictionary<string, TBenchRecord177>.Create;
  try
    DS_TBenchRecord177.Add('key', Default(TBenchRecord177));
  finally
    DS_TBenchRecord177.Free;
  end;
  DI_TBenchRecord177 := TDictionary<Integer, TBenchRecord177>.Create;
  try
    DI_TBenchRecord177.Add(1, Default(TBenchRecord177));
  finally
    DI_TBenchRecord177.Free;
  end;
  DG_TBenchRecord177 := TDictionary<TGUID, TBenchRecord177>.Create;
  try
    DG_TBenchRecord177.Add(TGUID.Empty, Default(TBenchRecord177));
  finally
    DG_TBenchRecord177.Free;
  end;
  DS_TBenchRecord178 := TDictionary<string, TBenchRecord178>.Create;
  try
    DS_TBenchRecord178.Add('key', Default(TBenchRecord178));
  finally
    DS_TBenchRecord178.Free;
  end;
  DI_TBenchRecord178 := TDictionary<Integer, TBenchRecord178>.Create;
  try
    DI_TBenchRecord178.Add(1, Default(TBenchRecord178));
  finally
    DI_TBenchRecord178.Free;
  end;
  DG_TBenchRecord178 := TDictionary<TGUID, TBenchRecord178>.Create;
  try
    DG_TBenchRecord178.Add(TGUID.Empty, Default(TBenchRecord178));
  finally
    DG_TBenchRecord178.Free;
  end;
  DS_TBenchRecord179 := TDictionary<string, TBenchRecord179>.Create;
  try
    DS_TBenchRecord179.Add('key', Default(TBenchRecord179));
  finally
    DS_TBenchRecord179.Free;
  end;
  DI_TBenchRecord179 := TDictionary<Integer, TBenchRecord179>.Create;
  try
    DI_TBenchRecord179.Add(1, Default(TBenchRecord179));
  finally
    DI_TBenchRecord179.Free;
  end;
  DG_TBenchRecord179 := TDictionary<TGUID, TBenchRecord179>.Create;
  try
    DG_TBenchRecord179.Add(TGUID.Empty, Default(TBenchRecord179));
  finally
    DG_TBenchRecord179.Free;
  end;
  DS_TBenchRecord180 := TDictionary<string, TBenchRecord180>.Create;
  try
    DS_TBenchRecord180.Add('key', Default(TBenchRecord180));
  finally
    DS_TBenchRecord180.Free;
  end;
  DI_TBenchRecord180 := TDictionary<Integer, TBenchRecord180>.Create;
  try
    DI_TBenchRecord180.Add(1, Default(TBenchRecord180));
  finally
    DI_TBenchRecord180.Free;
  end;
  DG_TBenchRecord180 := TDictionary<TGUID, TBenchRecord180>.Create;
  try
    DG_TBenchRecord180.Add(TGUID.Empty, Default(TBenchRecord180));
  finally
    DG_TBenchRecord180.Free;
  end;
  DS_TBenchRecord181 := TDictionary<string, TBenchRecord181>.Create;
  try
    DS_TBenchRecord181.Add('key', Default(TBenchRecord181));
  finally
    DS_TBenchRecord181.Free;
  end;
  DI_TBenchRecord181 := TDictionary<Integer, TBenchRecord181>.Create;
  try
    DI_TBenchRecord181.Add(1, Default(TBenchRecord181));
  finally
    DI_TBenchRecord181.Free;
  end;
  DG_TBenchRecord181 := TDictionary<TGUID, TBenchRecord181>.Create;
  try
    DG_TBenchRecord181.Add(TGUID.Empty, Default(TBenchRecord181));
  finally
    DG_TBenchRecord181.Free;
  end;
  DS_TBenchRecord182 := TDictionary<string, TBenchRecord182>.Create;
  try
    DS_TBenchRecord182.Add('key', Default(TBenchRecord182));
  finally
    DS_TBenchRecord182.Free;
  end;
  DI_TBenchRecord182 := TDictionary<Integer, TBenchRecord182>.Create;
  try
    DI_TBenchRecord182.Add(1, Default(TBenchRecord182));
  finally
    DI_TBenchRecord182.Free;
  end;
  DG_TBenchRecord182 := TDictionary<TGUID, TBenchRecord182>.Create;
  try
    DG_TBenchRecord182.Add(TGUID.Empty, Default(TBenchRecord182));
  finally
    DG_TBenchRecord182.Free;
  end;
  DS_TBenchRecord183 := TDictionary<string, TBenchRecord183>.Create;
  try
    DS_TBenchRecord183.Add('key', Default(TBenchRecord183));
  finally
    DS_TBenchRecord183.Free;
  end;
  DI_TBenchRecord183 := TDictionary<Integer, TBenchRecord183>.Create;
  try
    DI_TBenchRecord183.Add(1, Default(TBenchRecord183));
  finally
    DI_TBenchRecord183.Free;
  end;
  DG_TBenchRecord183 := TDictionary<TGUID, TBenchRecord183>.Create;
  try
    DG_TBenchRecord183.Add(TGUID.Empty, Default(TBenchRecord183));
  finally
    DG_TBenchRecord183.Free;
  end;
  DS_TBenchRecord184 := TDictionary<string, TBenchRecord184>.Create;
  try
    DS_TBenchRecord184.Add('key', Default(TBenchRecord184));
  finally
    DS_TBenchRecord184.Free;
  end;
  DI_TBenchRecord184 := TDictionary<Integer, TBenchRecord184>.Create;
  try
    DI_TBenchRecord184.Add(1, Default(TBenchRecord184));
  finally
    DI_TBenchRecord184.Free;
  end;
  DG_TBenchRecord184 := TDictionary<TGUID, TBenchRecord184>.Create;
  try
    DG_TBenchRecord184.Add(TGUID.Empty, Default(TBenchRecord184));
  finally
    DG_TBenchRecord184.Free;
  end;
  DS_TBenchRecord185 := TDictionary<string, TBenchRecord185>.Create;
  try
    DS_TBenchRecord185.Add('key', Default(TBenchRecord185));
  finally
    DS_TBenchRecord185.Free;
  end;
  DI_TBenchRecord185 := TDictionary<Integer, TBenchRecord185>.Create;
  try
    DI_TBenchRecord185.Add(1, Default(TBenchRecord185));
  finally
    DI_TBenchRecord185.Free;
  end;
  DG_TBenchRecord185 := TDictionary<TGUID, TBenchRecord185>.Create;
  try
    DG_TBenchRecord185.Add(TGUID.Empty, Default(TBenchRecord185));
  finally
    DG_TBenchRecord185.Free;
  end;
  DS_TBenchRecord186 := TDictionary<string, TBenchRecord186>.Create;
  try
    DS_TBenchRecord186.Add('key', Default(TBenchRecord186));
  finally
    DS_TBenchRecord186.Free;
  end;
  DI_TBenchRecord186 := TDictionary<Integer, TBenchRecord186>.Create;
  try
    DI_TBenchRecord186.Add(1, Default(TBenchRecord186));
  finally
    DI_TBenchRecord186.Free;
  end;
  DG_TBenchRecord186 := TDictionary<TGUID, TBenchRecord186>.Create;
  try
    DG_TBenchRecord186.Add(TGUID.Empty, Default(TBenchRecord186));
  finally
    DG_TBenchRecord186.Free;
  end;
  DS_TBenchRecord187 := TDictionary<string, TBenchRecord187>.Create;
  try
    DS_TBenchRecord187.Add('key', Default(TBenchRecord187));
  finally
    DS_TBenchRecord187.Free;
  end;
  DI_TBenchRecord187 := TDictionary<Integer, TBenchRecord187>.Create;
  try
    DI_TBenchRecord187.Add(1, Default(TBenchRecord187));
  finally
    DI_TBenchRecord187.Free;
  end;
  DG_TBenchRecord187 := TDictionary<TGUID, TBenchRecord187>.Create;
  try
    DG_TBenchRecord187.Add(TGUID.Empty, Default(TBenchRecord187));
  finally
    DG_TBenchRecord187.Free;
  end;
  DS_TBenchRecord188 := TDictionary<string, TBenchRecord188>.Create;
  try
    DS_TBenchRecord188.Add('key', Default(TBenchRecord188));
  finally
    DS_TBenchRecord188.Free;
  end;
  DI_TBenchRecord188 := TDictionary<Integer, TBenchRecord188>.Create;
  try
    DI_TBenchRecord188.Add(1, Default(TBenchRecord188));
  finally
    DI_TBenchRecord188.Free;
  end;
  DG_TBenchRecord188 := TDictionary<TGUID, TBenchRecord188>.Create;
  try
    DG_TBenchRecord188.Add(TGUID.Empty, Default(TBenchRecord188));
  finally
    DG_TBenchRecord188.Free;
  end;
  DS_TBenchRecord189 := TDictionary<string, TBenchRecord189>.Create;
  try
    DS_TBenchRecord189.Add('key', Default(TBenchRecord189));
  finally
    DS_TBenchRecord189.Free;
  end;
  DI_TBenchRecord189 := TDictionary<Integer, TBenchRecord189>.Create;
  try
    DI_TBenchRecord189.Add(1, Default(TBenchRecord189));
  finally
    DI_TBenchRecord189.Free;
  end;
  DG_TBenchRecord189 := TDictionary<TGUID, TBenchRecord189>.Create;
  try
    DG_TBenchRecord189.Add(TGUID.Empty, Default(TBenchRecord189));
  finally
    DG_TBenchRecord189.Free;
  end;
  DS_TBenchRecord190 := TDictionary<string, TBenchRecord190>.Create;
  try
    DS_TBenchRecord190.Add('key', Default(TBenchRecord190));
  finally
    DS_TBenchRecord190.Free;
  end;
  DI_TBenchRecord190 := TDictionary<Integer, TBenchRecord190>.Create;
  try
    DI_TBenchRecord190.Add(1, Default(TBenchRecord190));
  finally
    DI_TBenchRecord190.Free;
  end;
  DG_TBenchRecord190 := TDictionary<TGUID, TBenchRecord190>.Create;
  try
    DG_TBenchRecord190.Add(TGUID.Empty, Default(TBenchRecord190));
  finally
    DG_TBenchRecord190.Free;
  end;
  DS_TBenchRecord191 := TDictionary<string, TBenchRecord191>.Create;
  try
    DS_TBenchRecord191.Add('key', Default(TBenchRecord191));
  finally
    DS_TBenchRecord191.Free;
  end;
  DI_TBenchRecord191 := TDictionary<Integer, TBenchRecord191>.Create;
  try
    DI_TBenchRecord191.Add(1, Default(TBenchRecord191));
  finally
    DI_TBenchRecord191.Free;
  end;
  DG_TBenchRecord191 := TDictionary<TGUID, TBenchRecord191>.Create;
  try
    DG_TBenchRecord191.Add(TGUID.Empty, Default(TBenchRecord191));
  finally
    DG_TBenchRecord191.Free;
  end;
  DS_TBenchRecord192 := TDictionary<string, TBenchRecord192>.Create;
  try
    DS_TBenchRecord192.Add('key', Default(TBenchRecord192));
  finally
    DS_TBenchRecord192.Free;
  end;
  DI_TBenchRecord192 := TDictionary<Integer, TBenchRecord192>.Create;
  try
    DI_TBenchRecord192.Add(1, Default(TBenchRecord192));
  finally
    DI_TBenchRecord192.Free;
  end;
  DG_TBenchRecord192 := TDictionary<TGUID, TBenchRecord192>.Create;
  try
    DG_TBenchRecord192.Add(TGUID.Empty, Default(TBenchRecord192));
  finally
    DG_TBenchRecord192.Free;
  end;
  DS_TBenchRecord193 := TDictionary<string, TBenchRecord193>.Create;
  try
    DS_TBenchRecord193.Add('key', Default(TBenchRecord193));
  finally
    DS_TBenchRecord193.Free;
  end;
  DI_TBenchRecord193 := TDictionary<Integer, TBenchRecord193>.Create;
  try
    DI_TBenchRecord193.Add(1, Default(TBenchRecord193));
  finally
    DI_TBenchRecord193.Free;
  end;
  DG_TBenchRecord193 := TDictionary<TGUID, TBenchRecord193>.Create;
  try
    DG_TBenchRecord193.Add(TGUID.Empty, Default(TBenchRecord193));
  finally
    DG_TBenchRecord193.Free;
  end;
  DS_TBenchRecord194 := TDictionary<string, TBenchRecord194>.Create;
  try
    DS_TBenchRecord194.Add('key', Default(TBenchRecord194));
  finally
    DS_TBenchRecord194.Free;
  end;
  DI_TBenchRecord194 := TDictionary<Integer, TBenchRecord194>.Create;
  try
    DI_TBenchRecord194.Add(1, Default(TBenchRecord194));
  finally
    DI_TBenchRecord194.Free;
  end;
  DG_TBenchRecord194 := TDictionary<TGUID, TBenchRecord194>.Create;
  try
    DG_TBenchRecord194.Add(TGUID.Empty, Default(TBenchRecord194));
  finally
    DG_TBenchRecord194.Free;
  end;
  DS_TBenchRecord195 := TDictionary<string, TBenchRecord195>.Create;
  try
    DS_TBenchRecord195.Add('key', Default(TBenchRecord195));
  finally
    DS_TBenchRecord195.Free;
  end;
  DI_TBenchRecord195 := TDictionary<Integer, TBenchRecord195>.Create;
  try
    DI_TBenchRecord195.Add(1, Default(TBenchRecord195));
  finally
    DI_TBenchRecord195.Free;
  end;
  DG_TBenchRecord195 := TDictionary<TGUID, TBenchRecord195>.Create;
  try
    DG_TBenchRecord195.Add(TGUID.Empty, Default(TBenchRecord195));
  finally
    DG_TBenchRecord195.Free;
  end;
  DS_TBenchRecord196 := TDictionary<string, TBenchRecord196>.Create;
  try
    DS_TBenchRecord196.Add('key', Default(TBenchRecord196));
  finally
    DS_TBenchRecord196.Free;
  end;
  DI_TBenchRecord196 := TDictionary<Integer, TBenchRecord196>.Create;
  try
    DI_TBenchRecord196.Add(1, Default(TBenchRecord196));
  finally
    DI_TBenchRecord196.Free;
  end;
  DG_TBenchRecord196 := TDictionary<TGUID, TBenchRecord196>.Create;
  try
    DG_TBenchRecord196.Add(TGUID.Empty, Default(TBenchRecord196));
  finally
    DG_TBenchRecord196.Free;
  end;
  DS_TBenchRecord197 := TDictionary<string, TBenchRecord197>.Create;
  try
    DS_TBenchRecord197.Add('key', Default(TBenchRecord197));
  finally
    DS_TBenchRecord197.Free;
  end;
  DI_TBenchRecord197 := TDictionary<Integer, TBenchRecord197>.Create;
  try
    DI_TBenchRecord197.Add(1, Default(TBenchRecord197));
  finally
    DI_TBenchRecord197.Free;
  end;
  DG_TBenchRecord197 := TDictionary<TGUID, TBenchRecord197>.Create;
  try
    DG_TBenchRecord197.Add(TGUID.Empty, Default(TBenchRecord197));
  finally
    DG_TBenchRecord197.Free;
  end;
  DS_TBenchRecord198 := TDictionary<string, TBenchRecord198>.Create;
  try
    DS_TBenchRecord198.Add('key', Default(TBenchRecord198));
  finally
    DS_TBenchRecord198.Free;
  end;
  DI_TBenchRecord198 := TDictionary<Integer, TBenchRecord198>.Create;
  try
    DI_TBenchRecord198.Add(1, Default(TBenchRecord198));
  finally
    DI_TBenchRecord198.Free;
  end;
  DG_TBenchRecord198 := TDictionary<TGUID, TBenchRecord198>.Create;
  try
    DG_TBenchRecord198.Add(TGUID.Empty, Default(TBenchRecord198));
  finally
    DG_TBenchRecord198.Free;
  end;
  DS_TBenchRecord199 := TDictionary<string, TBenchRecord199>.Create;
  try
    DS_TBenchRecord199.Add('key', Default(TBenchRecord199));
  finally
    DS_TBenchRecord199.Free;
  end;
  DI_TBenchRecord199 := TDictionary<Integer, TBenchRecord199>.Create;
  try
    DI_TBenchRecord199.Add(1, Default(TBenchRecord199));
  finally
    DI_TBenchRecord199.Free;
  end;
  DG_TBenchRecord199 := TDictionary<TGUID, TBenchRecord199>.Create;
  try
    DG_TBenchRecord199.Add(TGUID.Empty, Default(TBenchRecord199));
  finally
    DG_TBenchRecord199.Free;
  end;
  DS_TBenchRecord200 := TDictionary<string, TBenchRecord200>.Create;
  try
    DS_TBenchRecord200.Add('key', Default(TBenchRecord200));
  finally
    DS_TBenchRecord200.Free;
  end;
  DI_TBenchRecord200 := TDictionary<Integer, TBenchRecord200>.Create;
  try
    DI_TBenchRecord200.Add(1, Default(TBenchRecord200));
  finally
    DI_TBenchRecord200.Free;
  end;
  DG_TBenchRecord200 := TDictionary<TGUID, TBenchRecord200>.Create;
  try
    DG_TBenchRecord200.Add(TGUID.Empty, Default(TBenchRecord200));
  finally
    DG_TBenchRecord200.Free;
  end;
  DS_TBenchRecord201 := TDictionary<string, TBenchRecord201>.Create;
  try
    DS_TBenchRecord201.Add('key', Default(TBenchRecord201));
  finally
    DS_TBenchRecord201.Free;
  end;
  DI_TBenchRecord201 := TDictionary<Integer, TBenchRecord201>.Create;
  try
    DI_TBenchRecord201.Add(1, Default(TBenchRecord201));
  finally
    DI_TBenchRecord201.Free;
  end;
  DG_TBenchRecord201 := TDictionary<TGUID, TBenchRecord201>.Create;
  try
    DG_TBenchRecord201.Add(TGUID.Empty, Default(TBenchRecord201));
  finally
    DG_TBenchRecord201.Free;
  end;
  DS_TBenchRecord202 := TDictionary<string, TBenchRecord202>.Create;
  try
    DS_TBenchRecord202.Add('key', Default(TBenchRecord202));
  finally
    DS_TBenchRecord202.Free;
  end;
  DI_TBenchRecord202 := TDictionary<Integer, TBenchRecord202>.Create;
  try
    DI_TBenchRecord202.Add(1, Default(TBenchRecord202));
  finally
    DI_TBenchRecord202.Free;
  end;
  DG_TBenchRecord202 := TDictionary<TGUID, TBenchRecord202>.Create;
  try
    DG_TBenchRecord202.Add(TGUID.Empty, Default(TBenchRecord202));
  finally
    DG_TBenchRecord202.Free;
  end;
  DS_TBenchRecord203 := TDictionary<string, TBenchRecord203>.Create;
  try
    DS_TBenchRecord203.Add('key', Default(TBenchRecord203));
  finally
    DS_TBenchRecord203.Free;
  end;
  DI_TBenchRecord203 := TDictionary<Integer, TBenchRecord203>.Create;
  try
    DI_TBenchRecord203.Add(1, Default(TBenchRecord203));
  finally
    DI_TBenchRecord203.Free;
  end;
  DG_TBenchRecord203 := TDictionary<TGUID, TBenchRecord203>.Create;
  try
    DG_TBenchRecord203.Add(TGUID.Empty, Default(TBenchRecord203));
  finally
    DG_TBenchRecord203.Free;
  end;
  DS_TBenchRecord204 := TDictionary<string, TBenchRecord204>.Create;
  try
    DS_TBenchRecord204.Add('key', Default(TBenchRecord204));
  finally
    DS_TBenchRecord204.Free;
  end;
  DI_TBenchRecord204 := TDictionary<Integer, TBenchRecord204>.Create;
  try
    DI_TBenchRecord204.Add(1, Default(TBenchRecord204));
  finally
    DI_TBenchRecord204.Free;
  end;
  DG_TBenchRecord204 := TDictionary<TGUID, TBenchRecord204>.Create;
  try
    DG_TBenchRecord204.Add(TGUID.Empty, Default(TBenchRecord204));
  finally
    DG_TBenchRecord204.Free;
  end;
  DS_TBenchRecord205 := TDictionary<string, TBenchRecord205>.Create;
  try
    DS_TBenchRecord205.Add('key', Default(TBenchRecord205));
  finally
    DS_TBenchRecord205.Free;
  end;
  DI_TBenchRecord205 := TDictionary<Integer, TBenchRecord205>.Create;
  try
    DI_TBenchRecord205.Add(1, Default(TBenchRecord205));
  finally
    DI_TBenchRecord205.Free;
  end;
  DG_TBenchRecord205 := TDictionary<TGUID, TBenchRecord205>.Create;
  try
    DG_TBenchRecord205.Add(TGUID.Empty, Default(TBenchRecord205));
  finally
    DG_TBenchRecord205.Free;
  end;
  DS_TBenchRecord206 := TDictionary<string, TBenchRecord206>.Create;
  try
    DS_TBenchRecord206.Add('key', Default(TBenchRecord206));
  finally
    DS_TBenchRecord206.Free;
  end;
  DI_TBenchRecord206 := TDictionary<Integer, TBenchRecord206>.Create;
  try
    DI_TBenchRecord206.Add(1, Default(TBenchRecord206));
  finally
    DI_TBenchRecord206.Free;
  end;
  DG_TBenchRecord206 := TDictionary<TGUID, TBenchRecord206>.Create;
  try
    DG_TBenchRecord206.Add(TGUID.Empty, Default(TBenchRecord206));
  finally
    DG_TBenchRecord206.Free;
  end;
  DS_TBenchRecord207 := TDictionary<string, TBenchRecord207>.Create;
  try
    DS_TBenchRecord207.Add('key', Default(TBenchRecord207));
  finally
    DS_TBenchRecord207.Free;
  end;
  DI_TBenchRecord207 := TDictionary<Integer, TBenchRecord207>.Create;
  try
    DI_TBenchRecord207.Add(1, Default(TBenchRecord207));
  finally
    DI_TBenchRecord207.Free;
  end;
  DG_TBenchRecord207 := TDictionary<TGUID, TBenchRecord207>.Create;
  try
    DG_TBenchRecord207.Add(TGUID.Empty, Default(TBenchRecord207));
  finally
    DG_TBenchRecord207.Free;
  end;
  DS_TBenchRecord208 := TDictionary<string, TBenchRecord208>.Create;
  try
    DS_TBenchRecord208.Add('key', Default(TBenchRecord208));
  finally
    DS_TBenchRecord208.Free;
  end;
  DI_TBenchRecord208 := TDictionary<Integer, TBenchRecord208>.Create;
  try
    DI_TBenchRecord208.Add(1, Default(TBenchRecord208));
  finally
    DI_TBenchRecord208.Free;
  end;
  DG_TBenchRecord208 := TDictionary<TGUID, TBenchRecord208>.Create;
  try
    DG_TBenchRecord208.Add(TGUID.Empty, Default(TBenchRecord208));
  finally
    DG_TBenchRecord208.Free;
  end;
  DS_TBenchRecord209 := TDictionary<string, TBenchRecord209>.Create;
  try
    DS_TBenchRecord209.Add('key', Default(TBenchRecord209));
  finally
    DS_TBenchRecord209.Free;
  end;
  DI_TBenchRecord209 := TDictionary<Integer, TBenchRecord209>.Create;
  try
    DI_TBenchRecord209.Add(1, Default(TBenchRecord209));
  finally
    DI_TBenchRecord209.Free;
  end;
  DG_TBenchRecord209 := TDictionary<TGUID, TBenchRecord209>.Create;
  try
    DG_TBenchRecord209.Add(TGUID.Empty, Default(TBenchRecord209));
  finally
    DG_TBenchRecord209.Free;
  end;
  DS_TBenchRecord210 := TDictionary<string, TBenchRecord210>.Create;
  try
    DS_TBenchRecord210.Add('key', Default(TBenchRecord210));
  finally
    DS_TBenchRecord210.Free;
  end;
  DI_TBenchRecord210 := TDictionary<Integer, TBenchRecord210>.Create;
  try
    DI_TBenchRecord210.Add(1, Default(TBenchRecord210));
  finally
    DI_TBenchRecord210.Free;
  end;
  DG_TBenchRecord210 := TDictionary<TGUID, TBenchRecord210>.Create;
  try
    DG_TBenchRecord210.Add(TGUID.Empty, Default(TBenchRecord210));
  finally
    DG_TBenchRecord210.Free;
  end;
  DS_TBenchRecord211 := TDictionary<string, TBenchRecord211>.Create;
  try
    DS_TBenchRecord211.Add('key', Default(TBenchRecord211));
  finally
    DS_TBenchRecord211.Free;
  end;
  DI_TBenchRecord211 := TDictionary<Integer, TBenchRecord211>.Create;
  try
    DI_TBenchRecord211.Add(1, Default(TBenchRecord211));
  finally
    DI_TBenchRecord211.Free;
  end;
  DG_TBenchRecord211 := TDictionary<TGUID, TBenchRecord211>.Create;
  try
    DG_TBenchRecord211.Add(TGUID.Empty, Default(TBenchRecord211));
  finally
    DG_TBenchRecord211.Free;
  end;
  DS_TBenchRecord212 := TDictionary<string, TBenchRecord212>.Create;
  try
    DS_TBenchRecord212.Add('key', Default(TBenchRecord212));
  finally
    DS_TBenchRecord212.Free;
  end;
  DI_TBenchRecord212 := TDictionary<Integer, TBenchRecord212>.Create;
  try
    DI_TBenchRecord212.Add(1, Default(TBenchRecord212));
  finally
    DI_TBenchRecord212.Free;
  end;
  DG_TBenchRecord212 := TDictionary<TGUID, TBenchRecord212>.Create;
  try
    DG_TBenchRecord212.Add(TGUID.Empty, Default(TBenchRecord212));
  finally
    DG_TBenchRecord212.Free;
  end;
  DS_TBenchRecord213 := TDictionary<string, TBenchRecord213>.Create;
  try
    DS_TBenchRecord213.Add('key', Default(TBenchRecord213));
  finally
    DS_TBenchRecord213.Free;
  end;
  DI_TBenchRecord213 := TDictionary<Integer, TBenchRecord213>.Create;
  try
    DI_TBenchRecord213.Add(1, Default(TBenchRecord213));
  finally
    DI_TBenchRecord213.Free;
  end;
  DG_TBenchRecord213 := TDictionary<TGUID, TBenchRecord213>.Create;
  try
    DG_TBenchRecord213.Add(TGUID.Empty, Default(TBenchRecord213));
  finally
    DG_TBenchRecord213.Free;
  end;
  DS_TBenchRecord214 := TDictionary<string, TBenchRecord214>.Create;
  try
    DS_TBenchRecord214.Add('key', Default(TBenchRecord214));
  finally
    DS_TBenchRecord214.Free;
  end;
  DI_TBenchRecord214 := TDictionary<Integer, TBenchRecord214>.Create;
  try
    DI_TBenchRecord214.Add(1, Default(TBenchRecord214));
  finally
    DI_TBenchRecord214.Free;
  end;
  DG_TBenchRecord214 := TDictionary<TGUID, TBenchRecord214>.Create;
  try
    DG_TBenchRecord214.Add(TGUID.Empty, Default(TBenchRecord214));
  finally
    DG_TBenchRecord214.Free;
  end;
  DS_TBenchRecord215 := TDictionary<string, TBenchRecord215>.Create;
  try
    DS_TBenchRecord215.Add('key', Default(TBenchRecord215));
  finally
    DS_TBenchRecord215.Free;
  end;
  DI_TBenchRecord215 := TDictionary<Integer, TBenchRecord215>.Create;
  try
    DI_TBenchRecord215.Add(1, Default(TBenchRecord215));
  finally
    DI_TBenchRecord215.Free;
  end;
  DG_TBenchRecord215 := TDictionary<TGUID, TBenchRecord215>.Create;
  try
    DG_TBenchRecord215.Add(TGUID.Empty, Default(TBenchRecord215));
  finally
    DG_TBenchRecord215.Free;
  end;
  DS_TBenchRecord216 := TDictionary<string, TBenchRecord216>.Create;
  try
    DS_TBenchRecord216.Add('key', Default(TBenchRecord216));
  finally
    DS_TBenchRecord216.Free;
  end;
  DI_TBenchRecord216 := TDictionary<Integer, TBenchRecord216>.Create;
  try
    DI_TBenchRecord216.Add(1, Default(TBenchRecord216));
  finally
    DI_TBenchRecord216.Free;
  end;
  DG_TBenchRecord216 := TDictionary<TGUID, TBenchRecord216>.Create;
  try
    DG_TBenchRecord216.Add(TGUID.Empty, Default(TBenchRecord216));
  finally
    DG_TBenchRecord216.Free;
  end;
  DS_TBenchRecord217 := TDictionary<string, TBenchRecord217>.Create;
  try
    DS_TBenchRecord217.Add('key', Default(TBenchRecord217));
  finally
    DS_TBenchRecord217.Free;
  end;
  DI_TBenchRecord217 := TDictionary<Integer, TBenchRecord217>.Create;
  try
    DI_TBenchRecord217.Add(1, Default(TBenchRecord217));
  finally
    DI_TBenchRecord217.Free;
  end;
  DG_TBenchRecord217 := TDictionary<TGUID, TBenchRecord217>.Create;
  try
    DG_TBenchRecord217.Add(TGUID.Empty, Default(TBenchRecord217));
  finally
    DG_TBenchRecord217.Free;
  end;
  DS_TBenchRecord218 := TDictionary<string, TBenchRecord218>.Create;
  try
    DS_TBenchRecord218.Add('key', Default(TBenchRecord218));
  finally
    DS_TBenchRecord218.Free;
  end;
  DI_TBenchRecord218 := TDictionary<Integer, TBenchRecord218>.Create;
  try
    DI_TBenchRecord218.Add(1, Default(TBenchRecord218));
  finally
    DI_TBenchRecord218.Free;
  end;
  DG_TBenchRecord218 := TDictionary<TGUID, TBenchRecord218>.Create;
  try
    DG_TBenchRecord218.Add(TGUID.Empty, Default(TBenchRecord218));
  finally
    DG_TBenchRecord218.Free;
  end;
  DS_TBenchRecord219 := TDictionary<string, TBenchRecord219>.Create;
  try
    DS_TBenchRecord219.Add('key', Default(TBenchRecord219));
  finally
    DS_TBenchRecord219.Free;
  end;
  DI_TBenchRecord219 := TDictionary<Integer, TBenchRecord219>.Create;
  try
    DI_TBenchRecord219.Add(1, Default(TBenchRecord219));
  finally
    DI_TBenchRecord219.Free;
  end;
  DG_TBenchRecord219 := TDictionary<TGUID, TBenchRecord219>.Create;
  try
    DG_TBenchRecord219.Add(TGUID.Empty, Default(TBenchRecord219));
  finally
    DG_TBenchRecord219.Free;
  end;
  DS_TBenchRecord220 := TDictionary<string, TBenchRecord220>.Create;
  try
    DS_TBenchRecord220.Add('key', Default(TBenchRecord220));
  finally
    DS_TBenchRecord220.Free;
  end;
  DI_TBenchRecord220 := TDictionary<Integer, TBenchRecord220>.Create;
  try
    DI_TBenchRecord220.Add(1, Default(TBenchRecord220));
  finally
    DI_TBenchRecord220.Free;
  end;
  DG_TBenchRecord220 := TDictionary<TGUID, TBenchRecord220>.Create;
  try
    DG_TBenchRecord220.Add(TGUID.Empty, Default(TBenchRecord220));
  finally
    DG_TBenchRecord220.Free;
  end;
  DS_TBenchRecord221 := TDictionary<string, TBenchRecord221>.Create;
  try
    DS_TBenchRecord221.Add('key', Default(TBenchRecord221));
  finally
    DS_TBenchRecord221.Free;
  end;
  DI_TBenchRecord221 := TDictionary<Integer, TBenchRecord221>.Create;
  try
    DI_TBenchRecord221.Add(1, Default(TBenchRecord221));
  finally
    DI_TBenchRecord221.Free;
  end;
  DG_TBenchRecord221 := TDictionary<TGUID, TBenchRecord221>.Create;
  try
    DG_TBenchRecord221.Add(TGUID.Empty, Default(TBenchRecord221));
  finally
    DG_TBenchRecord221.Free;
  end;
  DS_TBenchRecord222 := TDictionary<string, TBenchRecord222>.Create;
  try
    DS_TBenchRecord222.Add('key', Default(TBenchRecord222));
  finally
    DS_TBenchRecord222.Free;
  end;
  DI_TBenchRecord222 := TDictionary<Integer, TBenchRecord222>.Create;
  try
    DI_TBenchRecord222.Add(1, Default(TBenchRecord222));
  finally
    DI_TBenchRecord222.Free;
  end;
  DG_TBenchRecord222 := TDictionary<TGUID, TBenchRecord222>.Create;
  try
    DG_TBenchRecord222.Add(TGUID.Empty, Default(TBenchRecord222));
  finally
    DG_TBenchRecord222.Free;
  end;
  DS_TBenchRecord223 := TDictionary<string, TBenchRecord223>.Create;
  try
    DS_TBenchRecord223.Add('key', Default(TBenchRecord223));
  finally
    DS_TBenchRecord223.Free;
  end;
  DI_TBenchRecord223 := TDictionary<Integer, TBenchRecord223>.Create;
  try
    DI_TBenchRecord223.Add(1, Default(TBenchRecord223));
  finally
    DI_TBenchRecord223.Free;
  end;
  DG_TBenchRecord223 := TDictionary<TGUID, TBenchRecord223>.Create;
  try
    DG_TBenchRecord223.Add(TGUID.Empty, Default(TBenchRecord223));
  finally
    DG_TBenchRecord223.Free;
  end;
  DS_TBenchRecord224 := TDictionary<string, TBenchRecord224>.Create;
  try
    DS_TBenchRecord224.Add('key', Default(TBenchRecord224));
  finally
    DS_TBenchRecord224.Free;
  end;
  DI_TBenchRecord224 := TDictionary<Integer, TBenchRecord224>.Create;
  try
    DI_TBenchRecord224.Add(1, Default(TBenchRecord224));
  finally
    DI_TBenchRecord224.Free;
  end;
  DG_TBenchRecord224 := TDictionary<TGUID, TBenchRecord224>.Create;
  try
    DG_TBenchRecord224.Add(TGUID.Empty, Default(TBenchRecord224));
  finally
    DG_TBenchRecord224.Free;
  end;
  DS_TBenchRecord225 := TDictionary<string, TBenchRecord225>.Create;
  try
    DS_TBenchRecord225.Add('key', Default(TBenchRecord225));
  finally
    DS_TBenchRecord225.Free;
  end;
  DI_TBenchRecord225 := TDictionary<Integer, TBenchRecord225>.Create;
  try
    DI_TBenchRecord225.Add(1, Default(TBenchRecord225));
  finally
    DI_TBenchRecord225.Free;
  end;
  DG_TBenchRecord225 := TDictionary<TGUID, TBenchRecord225>.Create;
  try
    DG_TBenchRecord225.Add(TGUID.Empty, Default(TBenchRecord225));
  finally
    DG_TBenchRecord225.Free;
  end;
  DS_TBenchRecord226 := TDictionary<string, TBenchRecord226>.Create;
  try
    DS_TBenchRecord226.Add('key', Default(TBenchRecord226));
  finally
    DS_TBenchRecord226.Free;
  end;
  DI_TBenchRecord226 := TDictionary<Integer, TBenchRecord226>.Create;
  try
    DI_TBenchRecord226.Add(1, Default(TBenchRecord226));
  finally
    DI_TBenchRecord226.Free;
  end;
  DG_TBenchRecord226 := TDictionary<TGUID, TBenchRecord226>.Create;
  try
    DG_TBenchRecord226.Add(TGUID.Empty, Default(TBenchRecord226));
  finally
    DG_TBenchRecord226.Free;
  end;
  DS_TBenchRecord227 := TDictionary<string, TBenchRecord227>.Create;
  try
    DS_TBenchRecord227.Add('key', Default(TBenchRecord227));
  finally
    DS_TBenchRecord227.Free;
  end;
  DI_TBenchRecord227 := TDictionary<Integer, TBenchRecord227>.Create;
  try
    DI_TBenchRecord227.Add(1, Default(TBenchRecord227));
  finally
    DI_TBenchRecord227.Free;
  end;
  DG_TBenchRecord227 := TDictionary<TGUID, TBenchRecord227>.Create;
  try
    DG_TBenchRecord227.Add(TGUID.Empty, Default(TBenchRecord227));
  finally
    DG_TBenchRecord227.Free;
  end;
  DS_TBenchRecord228 := TDictionary<string, TBenchRecord228>.Create;
  try
    DS_TBenchRecord228.Add('key', Default(TBenchRecord228));
  finally
    DS_TBenchRecord228.Free;
  end;
  DI_TBenchRecord228 := TDictionary<Integer, TBenchRecord228>.Create;
  try
    DI_TBenchRecord228.Add(1, Default(TBenchRecord228));
  finally
    DI_TBenchRecord228.Free;
  end;
  DG_TBenchRecord228 := TDictionary<TGUID, TBenchRecord228>.Create;
  try
    DG_TBenchRecord228.Add(TGUID.Empty, Default(TBenchRecord228));
  finally
    DG_TBenchRecord228.Free;
  end;
  DS_TBenchRecord229 := TDictionary<string, TBenchRecord229>.Create;
  try
    DS_TBenchRecord229.Add('key', Default(TBenchRecord229));
  finally
    DS_TBenchRecord229.Free;
  end;
  DI_TBenchRecord229 := TDictionary<Integer, TBenchRecord229>.Create;
  try
    DI_TBenchRecord229.Add(1, Default(TBenchRecord229));
  finally
    DI_TBenchRecord229.Free;
  end;
  DG_TBenchRecord229 := TDictionary<TGUID, TBenchRecord229>.Create;
  try
    DG_TBenchRecord229.Add(TGUID.Empty, Default(TBenchRecord229));
  finally
    DG_TBenchRecord229.Free;
  end;
  DS_TBenchRecord230 := TDictionary<string, TBenchRecord230>.Create;
  try
    DS_TBenchRecord230.Add('key', Default(TBenchRecord230));
  finally
    DS_TBenchRecord230.Free;
  end;
  DI_TBenchRecord230 := TDictionary<Integer, TBenchRecord230>.Create;
  try
    DI_TBenchRecord230.Add(1, Default(TBenchRecord230));
  finally
    DI_TBenchRecord230.Free;
  end;
  DG_TBenchRecord230 := TDictionary<TGUID, TBenchRecord230>.Create;
  try
    DG_TBenchRecord230.Add(TGUID.Empty, Default(TBenchRecord230));
  finally
    DG_TBenchRecord230.Free;
  end;
  DS_TBenchRecord231 := TDictionary<string, TBenchRecord231>.Create;
  try
    DS_TBenchRecord231.Add('key', Default(TBenchRecord231));
  finally
    DS_TBenchRecord231.Free;
  end;
  DI_TBenchRecord231 := TDictionary<Integer, TBenchRecord231>.Create;
  try
    DI_TBenchRecord231.Add(1, Default(TBenchRecord231));
  finally
    DI_TBenchRecord231.Free;
  end;
  DG_TBenchRecord231 := TDictionary<TGUID, TBenchRecord231>.Create;
  try
    DG_TBenchRecord231.Add(TGUID.Empty, Default(TBenchRecord231));
  finally
    DG_TBenchRecord231.Free;
  end;
  DS_TBenchRecord232 := TDictionary<string, TBenchRecord232>.Create;
  try
    DS_TBenchRecord232.Add('key', Default(TBenchRecord232));
  finally
    DS_TBenchRecord232.Free;
  end;
  DI_TBenchRecord232 := TDictionary<Integer, TBenchRecord232>.Create;
  try
    DI_TBenchRecord232.Add(1, Default(TBenchRecord232));
  finally
    DI_TBenchRecord232.Free;
  end;
  DG_TBenchRecord232 := TDictionary<TGUID, TBenchRecord232>.Create;
  try
    DG_TBenchRecord232.Add(TGUID.Empty, Default(TBenchRecord232));
  finally
    DG_TBenchRecord232.Free;
  end;
  DS_TBenchRecord233 := TDictionary<string, TBenchRecord233>.Create;
  try
    DS_TBenchRecord233.Add('key', Default(TBenchRecord233));
  finally
    DS_TBenchRecord233.Free;
  end;
  DI_TBenchRecord233 := TDictionary<Integer, TBenchRecord233>.Create;
  try
    DI_TBenchRecord233.Add(1, Default(TBenchRecord233));
  finally
    DI_TBenchRecord233.Free;
  end;
  DG_TBenchRecord233 := TDictionary<TGUID, TBenchRecord233>.Create;
  try
    DG_TBenchRecord233.Add(TGUID.Empty, Default(TBenchRecord233));
  finally
    DG_TBenchRecord233.Free;
  end;
  DS_TBenchRecord234 := TDictionary<string, TBenchRecord234>.Create;
  try
    DS_TBenchRecord234.Add('key', Default(TBenchRecord234));
  finally
    DS_TBenchRecord234.Free;
  end;
  DI_TBenchRecord234 := TDictionary<Integer, TBenchRecord234>.Create;
  try
    DI_TBenchRecord234.Add(1, Default(TBenchRecord234));
  finally
    DI_TBenchRecord234.Free;
  end;
  DG_TBenchRecord234 := TDictionary<TGUID, TBenchRecord234>.Create;
  try
    DG_TBenchRecord234.Add(TGUID.Empty, Default(TBenchRecord234));
  finally
    DG_TBenchRecord234.Free;
  end;
  DS_TBenchRecord235 := TDictionary<string, TBenchRecord235>.Create;
  try
    DS_TBenchRecord235.Add('key', Default(TBenchRecord235));
  finally
    DS_TBenchRecord235.Free;
  end;
  DI_TBenchRecord235 := TDictionary<Integer, TBenchRecord235>.Create;
  try
    DI_TBenchRecord235.Add(1, Default(TBenchRecord235));
  finally
    DI_TBenchRecord235.Free;
  end;
  DG_TBenchRecord235 := TDictionary<TGUID, TBenchRecord235>.Create;
  try
    DG_TBenchRecord235.Add(TGUID.Empty, Default(TBenchRecord235));
  finally
    DG_TBenchRecord235.Free;
  end;
  DS_TBenchRecord236 := TDictionary<string, TBenchRecord236>.Create;
  try
    DS_TBenchRecord236.Add('key', Default(TBenchRecord236));
  finally
    DS_TBenchRecord236.Free;
  end;
  DI_TBenchRecord236 := TDictionary<Integer, TBenchRecord236>.Create;
  try
    DI_TBenchRecord236.Add(1, Default(TBenchRecord236));
  finally
    DI_TBenchRecord236.Free;
  end;
  DG_TBenchRecord236 := TDictionary<TGUID, TBenchRecord236>.Create;
  try
    DG_TBenchRecord236.Add(TGUID.Empty, Default(TBenchRecord236));
  finally
    DG_TBenchRecord236.Free;
  end;
  DS_TBenchRecord237 := TDictionary<string, TBenchRecord237>.Create;
  try
    DS_TBenchRecord237.Add('key', Default(TBenchRecord237));
  finally
    DS_TBenchRecord237.Free;
  end;
  DI_TBenchRecord237 := TDictionary<Integer, TBenchRecord237>.Create;
  try
    DI_TBenchRecord237.Add(1, Default(TBenchRecord237));
  finally
    DI_TBenchRecord237.Free;
  end;
  DG_TBenchRecord237 := TDictionary<TGUID, TBenchRecord237>.Create;
  try
    DG_TBenchRecord237.Add(TGUID.Empty, Default(TBenchRecord237));
  finally
    DG_TBenchRecord237.Free;
  end;
  DS_TBenchRecord238 := TDictionary<string, TBenchRecord238>.Create;
  try
    DS_TBenchRecord238.Add('key', Default(TBenchRecord238));
  finally
    DS_TBenchRecord238.Free;
  end;
  DI_TBenchRecord238 := TDictionary<Integer, TBenchRecord238>.Create;
  try
    DI_TBenchRecord238.Add(1, Default(TBenchRecord238));
  finally
    DI_TBenchRecord238.Free;
  end;
  DG_TBenchRecord238 := TDictionary<TGUID, TBenchRecord238>.Create;
  try
    DG_TBenchRecord238.Add(TGUID.Empty, Default(TBenchRecord238));
  finally
    DG_TBenchRecord238.Free;
  end;
  DS_TBenchRecord239 := TDictionary<string, TBenchRecord239>.Create;
  try
    DS_TBenchRecord239.Add('key', Default(TBenchRecord239));
  finally
    DS_TBenchRecord239.Free;
  end;
  DI_TBenchRecord239 := TDictionary<Integer, TBenchRecord239>.Create;
  try
    DI_TBenchRecord239.Add(1, Default(TBenchRecord239));
  finally
    DI_TBenchRecord239.Free;
  end;
  DG_TBenchRecord239 := TDictionary<TGUID, TBenchRecord239>.Create;
  try
    DG_TBenchRecord239.Add(TGUID.Empty, Default(TBenchRecord239));
  finally
    DG_TBenchRecord239.Free;
  end;
  DS_TBenchRecord240 := TDictionary<string, TBenchRecord240>.Create;
  try
    DS_TBenchRecord240.Add('key', Default(TBenchRecord240));
  finally
    DS_TBenchRecord240.Free;
  end;
  DI_TBenchRecord240 := TDictionary<Integer, TBenchRecord240>.Create;
  try
    DI_TBenchRecord240.Add(1, Default(TBenchRecord240));
  finally
    DI_TBenchRecord240.Free;
  end;
  DG_TBenchRecord240 := TDictionary<TGUID, TBenchRecord240>.Create;
  try
    DG_TBenchRecord240.Add(TGUID.Empty, Default(TBenchRecord240));
  finally
    DG_TBenchRecord240.Free;
  end;
  DS_TBenchRecord241 := TDictionary<string, TBenchRecord241>.Create;
  try
    DS_TBenchRecord241.Add('key', Default(TBenchRecord241));
  finally
    DS_TBenchRecord241.Free;
  end;
  DI_TBenchRecord241 := TDictionary<Integer, TBenchRecord241>.Create;
  try
    DI_TBenchRecord241.Add(1, Default(TBenchRecord241));
  finally
    DI_TBenchRecord241.Free;
  end;
  DG_TBenchRecord241 := TDictionary<TGUID, TBenchRecord241>.Create;
  try
    DG_TBenchRecord241.Add(TGUID.Empty, Default(TBenchRecord241));
  finally
    DG_TBenchRecord241.Free;
  end;
  DS_TBenchRecord242 := TDictionary<string, TBenchRecord242>.Create;
  try
    DS_TBenchRecord242.Add('key', Default(TBenchRecord242));
  finally
    DS_TBenchRecord242.Free;
  end;
  DI_TBenchRecord242 := TDictionary<Integer, TBenchRecord242>.Create;
  try
    DI_TBenchRecord242.Add(1, Default(TBenchRecord242));
  finally
    DI_TBenchRecord242.Free;
  end;
  DG_TBenchRecord242 := TDictionary<TGUID, TBenchRecord242>.Create;
  try
    DG_TBenchRecord242.Add(TGUID.Empty, Default(TBenchRecord242));
  finally
    DG_TBenchRecord242.Free;
  end;
  DS_TBenchRecord243 := TDictionary<string, TBenchRecord243>.Create;
  try
    DS_TBenchRecord243.Add('key', Default(TBenchRecord243));
  finally
    DS_TBenchRecord243.Free;
  end;
  DI_TBenchRecord243 := TDictionary<Integer, TBenchRecord243>.Create;
  try
    DI_TBenchRecord243.Add(1, Default(TBenchRecord243));
  finally
    DI_TBenchRecord243.Free;
  end;
  DG_TBenchRecord243 := TDictionary<TGUID, TBenchRecord243>.Create;
  try
    DG_TBenchRecord243.Add(TGUID.Empty, Default(TBenchRecord243));
  finally
    DG_TBenchRecord243.Free;
  end;
  DS_TBenchRecord244 := TDictionary<string, TBenchRecord244>.Create;
  try
    DS_TBenchRecord244.Add('key', Default(TBenchRecord244));
  finally
    DS_TBenchRecord244.Free;
  end;
  DI_TBenchRecord244 := TDictionary<Integer, TBenchRecord244>.Create;
  try
    DI_TBenchRecord244.Add(1, Default(TBenchRecord244));
  finally
    DI_TBenchRecord244.Free;
  end;
  DG_TBenchRecord244 := TDictionary<TGUID, TBenchRecord244>.Create;
  try
    DG_TBenchRecord244.Add(TGUID.Empty, Default(TBenchRecord244));
  finally
    DG_TBenchRecord244.Free;
  end;
  DS_TBenchRecord245 := TDictionary<string, TBenchRecord245>.Create;
  try
    DS_TBenchRecord245.Add('key', Default(TBenchRecord245));
  finally
    DS_TBenchRecord245.Free;
  end;
  DI_TBenchRecord245 := TDictionary<Integer, TBenchRecord245>.Create;
  try
    DI_TBenchRecord245.Add(1, Default(TBenchRecord245));
  finally
    DI_TBenchRecord245.Free;
  end;
  DG_TBenchRecord245 := TDictionary<TGUID, TBenchRecord245>.Create;
  try
    DG_TBenchRecord245.Add(TGUID.Empty, Default(TBenchRecord245));
  finally
    DG_TBenchRecord245.Free;
  end;
  DS_TBenchRecord246 := TDictionary<string, TBenchRecord246>.Create;
  try
    DS_TBenchRecord246.Add('key', Default(TBenchRecord246));
  finally
    DS_TBenchRecord246.Free;
  end;
  DI_TBenchRecord246 := TDictionary<Integer, TBenchRecord246>.Create;
  try
    DI_TBenchRecord246.Add(1, Default(TBenchRecord246));
  finally
    DI_TBenchRecord246.Free;
  end;
  DG_TBenchRecord246 := TDictionary<TGUID, TBenchRecord246>.Create;
  try
    DG_TBenchRecord246.Add(TGUID.Empty, Default(TBenchRecord246));
  finally
    DG_TBenchRecord246.Free;
  end;
  DS_TBenchRecord247 := TDictionary<string, TBenchRecord247>.Create;
  try
    DS_TBenchRecord247.Add('key', Default(TBenchRecord247));
  finally
    DS_TBenchRecord247.Free;
  end;
  DI_TBenchRecord247 := TDictionary<Integer, TBenchRecord247>.Create;
  try
    DI_TBenchRecord247.Add(1, Default(TBenchRecord247));
  finally
    DI_TBenchRecord247.Free;
  end;
  DG_TBenchRecord247 := TDictionary<TGUID, TBenchRecord247>.Create;
  try
    DG_TBenchRecord247.Add(TGUID.Empty, Default(TBenchRecord247));
  finally
    DG_TBenchRecord247.Free;
  end;
  DS_TBenchRecord248 := TDictionary<string, TBenchRecord248>.Create;
  try
    DS_TBenchRecord248.Add('key', Default(TBenchRecord248));
  finally
    DS_TBenchRecord248.Free;
  end;
  DI_TBenchRecord248 := TDictionary<Integer, TBenchRecord248>.Create;
  try
    DI_TBenchRecord248.Add(1, Default(TBenchRecord248));
  finally
    DI_TBenchRecord248.Free;
  end;
  DG_TBenchRecord248 := TDictionary<TGUID, TBenchRecord248>.Create;
  try
    DG_TBenchRecord248.Add(TGUID.Empty, Default(TBenchRecord248));
  finally
    DG_TBenchRecord248.Free;
  end;
  DS_TBenchRecord249 := TDictionary<string, TBenchRecord249>.Create;
  try
    DS_TBenchRecord249.Add('key', Default(TBenchRecord249));
  finally
    DS_TBenchRecord249.Free;
  end;
  DI_TBenchRecord249 := TDictionary<Integer, TBenchRecord249>.Create;
  try
    DI_TBenchRecord249.Add(1, Default(TBenchRecord249));
  finally
    DI_TBenchRecord249.Free;
  end;
  DG_TBenchRecord249 := TDictionary<TGUID, TBenchRecord249>.Create;
  try
    DG_TBenchRecord249.Add(TGUID.Empty, Default(TBenchRecord249));
  finally
    DG_TBenchRecord249.Free;
  end;
  DS_TBenchRecord250 := TDictionary<string, TBenchRecord250>.Create;
  try
    DS_TBenchRecord250.Add('key', Default(TBenchRecord250));
  finally
    DS_TBenchRecord250.Free;
  end;
  DI_TBenchRecord250 := TDictionary<Integer, TBenchRecord250>.Create;
  try
    DI_TBenchRecord250.Add(1, Default(TBenchRecord250));
  finally
    DI_TBenchRecord250.Free;
  end;
  DG_TBenchRecord250 := TDictionary<TGUID, TBenchRecord250>.Create;
  try
    DG_TBenchRecord250.Add(TGUID.Empty, Default(TBenchRecord250));
  finally
    DG_TBenchRecord250.Free;
  end;
  DS_TBenchRecord251 := TDictionary<string, TBenchRecord251>.Create;
  try
    DS_TBenchRecord251.Add('key', Default(TBenchRecord251));
  finally
    DS_TBenchRecord251.Free;
  end;
  DI_TBenchRecord251 := TDictionary<Integer, TBenchRecord251>.Create;
  try
    DI_TBenchRecord251.Add(1, Default(TBenchRecord251));
  finally
    DI_TBenchRecord251.Free;
  end;
  DG_TBenchRecord251 := TDictionary<TGUID, TBenchRecord251>.Create;
  try
    DG_TBenchRecord251.Add(TGUID.Empty, Default(TBenchRecord251));
  finally
    DG_TBenchRecord251.Free;
  end;
  DS_TBenchRecord252 := TDictionary<string, TBenchRecord252>.Create;
  try
    DS_TBenchRecord252.Add('key', Default(TBenchRecord252));
  finally
    DS_TBenchRecord252.Free;
  end;
  DI_TBenchRecord252 := TDictionary<Integer, TBenchRecord252>.Create;
  try
    DI_TBenchRecord252.Add(1, Default(TBenchRecord252));
  finally
    DI_TBenchRecord252.Free;
  end;
  DG_TBenchRecord252 := TDictionary<TGUID, TBenchRecord252>.Create;
  try
    DG_TBenchRecord252.Add(TGUID.Empty, Default(TBenchRecord252));
  finally
    DG_TBenchRecord252.Free;
  end;
  DS_TBenchRecord253 := TDictionary<string, TBenchRecord253>.Create;
  try
    DS_TBenchRecord253.Add('key', Default(TBenchRecord253));
  finally
    DS_TBenchRecord253.Free;
  end;
  DI_TBenchRecord253 := TDictionary<Integer, TBenchRecord253>.Create;
  try
    DI_TBenchRecord253.Add(1, Default(TBenchRecord253));
  finally
    DI_TBenchRecord253.Free;
  end;
  DG_TBenchRecord253 := TDictionary<TGUID, TBenchRecord253>.Create;
  try
    DG_TBenchRecord253.Add(TGUID.Empty, Default(TBenchRecord253));
  finally
    DG_TBenchRecord253.Free;
  end;
  DS_TBenchRecord254 := TDictionary<string, TBenchRecord254>.Create;
  try
    DS_TBenchRecord254.Add('key', Default(TBenchRecord254));
  finally
    DS_TBenchRecord254.Free;
  end;
  DI_TBenchRecord254 := TDictionary<Integer, TBenchRecord254>.Create;
  try
    DI_TBenchRecord254.Add(1, Default(TBenchRecord254));
  finally
    DI_TBenchRecord254.Free;
  end;
  DG_TBenchRecord254 := TDictionary<TGUID, TBenchRecord254>.Create;
  try
    DG_TBenchRecord254.Add(TGUID.Empty, Default(TBenchRecord254));
  finally
    DG_TBenchRecord254.Free;
  end;
  DS_TBenchRecord255 := TDictionary<string, TBenchRecord255>.Create;
  try
    DS_TBenchRecord255.Add('key', Default(TBenchRecord255));
  finally
    DS_TBenchRecord255.Free;
  end;
  DI_TBenchRecord255 := TDictionary<Integer, TBenchRecord255>.Create;
  try
    DI_TBenchRecord255.Add(1, Default(TBenchRecord255));
  finally
    DI_TBenchRecord255.Free;
  end;
  DG_TBenchRecord255 := TDictionary<TGUID, TBenchRecord255>.Create;
  try
    DG_TBenchRecord255.Add(TGUID.Empty, Default(TBenchRecord255));
  finally
    DG_TBenchRecord255.Free;
  end;
  DS_TBenchRecord256 := TDictionary<string, TBenchRecord256>.Create;
  try
    DS_TBenchRecord256.Add('key', Default(TBenchRecord256));
  finally
    DS_TBenchRecord256.Free;
  end;
  DI_TBenchRecord256 := TDictionary<Integer, TBenchRecord256>.Create;
  try
    DI_TBenchRecord256.Add(1, Default(TBenchRecord256));
  finally
    DI_TBenchRecord256.Free;
  end;
  DG_TBenchRecord256 := TDictionary<TGUID, TBenchRecord256>.Create;
  try
    DG_TBenchRecord256.Add(TGUID.Empty, Default(TBenchRecord256));
  finally
    DG_TBenchRecord256.Free;
  end;
  DS_TBenchRecord257 := TDictionary<string, TBenchRecord257>.Create;
  try
    DS_TBenchRecord257.Add('key', Default(TBenchRecord257));
  finally
    DS_TBenchRecord257.Free;
  end;
  DI_TBenchRecord257 := TDictionary<Integer, TBenchRecord257>.Create;
  try
    DI_TBenchRecord257.Add(1, Default(TBenchRecord257));
  finally
    DI_TBenchRecord257.Free;
  end;
  DG_TBenchRecord257 := TDictionary<TGUID, TBenchRecord257>.Create;
  try
    DG_TBenchRecord257.Add(TGUID.Empty, Default(TBenchRecord257));
  finally
    DG_TBenchRecord257.Free;
  end;
  DS_TBenchRecord258 := TDictionary<string, TBenchRecord258>.Create;
  try
    DS_TBenchRecord258.Add('key', Default(TBenchRecord258));
  finally
    DS_TBenchRecord258.Free;
  end;
  DI_TBenchRecord258 := TDictionary<Integer, TBenchRecord258>.Create;
  try
    DI_TBenchRecord258.Add(1, Default(TBenchRecord258));
  finally
    DI_TBenchRecord258.Free;
  end;
  DG_TBenchRecord258 := TDictionary<TGUID, TBenchRecord258>.Create;
  try
    DG_TBenchRecord258.Add(TGUID.Empty, Default(TBenchRecord258));
  finally
    DG_TBenchRecord258.Free;
  end;
  DS_TBenchRecord259 := TDictionary<string, TBenchRecord259>.Create;
  try
    DS_TBenchRecord259.Add('key', Default(TBenchRecord259));
  finally
    DS_TBenchRecord259.Free;
  end;
  DI_TBenchRecord259 := TDictionary<Integer, TBenchRecord259>.Create;
  try
    DI_TBenchRecord259.Add(1, Default(TBenchRecord259));
  finally
    DI_TBenchRecord259.Free;
  end;
  DG_TBenchRecord259 := TDictionary<TGUID, TBenchRecord259>.Create;
  try
    DG_TBenchRecord259.Add(TGUID.Empty, Default(TBenchRecord259));
  finally
    DG_TBenchRecord259.Free;
  end;
  DS_TBenchRecord260 := TDictionary<string, TBenchRecord260>.Create;
  try
    DS_TBenchRecord260.Add('key', Default(TBenchRecord260));
  finally
    DS_TBenchRecord260.Free;
  end;
  DI_TBenchRecord260 := TDictionary<Integer, TBenchRecord260>.Create;
  try
    DI_TBenchRecord260.Add(1, Default(TBenchRecord260));
  finally
    DI_TBenchRecord260.Free;
  end;
  DG_TBenchRecord260 := TDictionary<TGUID, TBenchRecord260>.Create;
  try
    DG_TBenchRecord260.Add(TGUID.Empty, Default(TBenchRecord260));
  finally
    DG_TBenchRecord260.Free;
  end;
  DS_TBenchRecord261 := TDictionary<string, TBenchRecord261>.Create;
  try
    DS_TBenchRecord261.Add('key', Default(TBenchRecord261));
  finally
    DS_TBenchRecord261.Free;
  end;
  DI_TBenchRecord261 := TDictionary<Integer, TBenchRecord261>.Create;
  try
    DI_TBenchRecord261.Add(1, Default(TBenchRecord261));
  finally
    DI_TBenchRecord261.Free;
  end;
  DG_TBenchRecord261 := TDictionary<TGUID, TBenchRecord261>.Create;
  try
    DG_TBenchRecord261.Add(TGUID.Empty, Default(TBenchRecord261));
  finally
    DG_TBenchRecord261.Free;
  end;
  DS_TBenchRecord262 := TDictionary<string, TBenchRecord262>.Create;
  try
    DS_TBenchRecord262.Add('key', Default(TBenchRecord262));
  finally
    DS_TBenchRecord262.Free;
  end;
  DI_TBenchRecord262 := TDictionary<Integer, TBenchRecord262>.Create;
  try
    DI_TBenchRecord262.Add(1, Default(TBenchRecord262));
  finally
    DI_TBenchRecord262.Free;
  end;
  DG_TBenchRecord262 := TDictionary<TGUID, TBenchRecord262>.Create;
  try
    DG_TBenchRecord262.Add(TGUID.Empty, Default(TBenchRecord262));
  finally
    DG_TBenchRecord262.Free;
  end;
  DS_TBenchRecord263 := TDictionary<string, TBenchRecord263>.Create;
  try
    DS_TBenchRecord263.Add('key', Default(TBenchRecord263));
  finally
    DS_TBenchRecord263.Free;
  end;
  DI_TBenchRecord263 := TDictionary<Integer, TBenchRecord263>.Create;
  try
    DI_TBenchRecord263.Add(1, Default(TBenchRecord263));
  finally
    DI_TBenchRecord263.Free;
  end;
  DG_TBenchRecord263 := TDictionary<TGUID, TBenchRecord263>.Create;
  try
    DG_TBenchRecord263.Add(TGUID.Empty, Default(TBenchRecord263));
  finally
    DG_TBenchRecord263.Free;
  end;
  DS_TBenchRecord264 := TDictionary<string, TBenchRecord264>.Create;
  try
    DS_TBenchRecord264.Add('key', Default(TBenchRecord264));
  finally
    DS_TBenchRecord264.Free;
  end;
  DI_TBenchRecord264 := TDictionary<Integer, TBenchRecord264>.Create;
  try
    DI_TBenchRecord264.Add(1, Default(TBenchRecord264));
  finally
    DI_TBenchRecord264.Free;
  end;
  DG_TBenchRecord264 := TDictionary<TGUID, TBenchRecord264>.Create;
  try
    DG_TBenchRecord264.Add(TGUID.Empty, Default(TBenchRecord264));
  finally
    DG_TBenchRecord264.Free;
  end;
  DS_TBenchRecord265 := TDictionary<string, TBenchRecord265>.Create;
  try
    DS_TBenchRecord265.Add('key', Default(TBenchRecord265));
  finally
    DS_TBenchRecord265.Free;
  end;
  DI_TBenchRecord265 := TDictionary<Integer, TBenchRecord265>.Create;
  try
    DI_TBenchRecord265.Add(1, Default(TBenchRecord265));
  finally
    DI_TBenchRecord265.Free;
  end;
  DG_TBenchRecord265 := TDictionary<TGUID, TBenchRecord265>.Create;
  try
    DG_TBenchRecord265.Add(TGUID.Empty, Default(TBenchRecord265));
  finally
    DG_TBenchRecord265.Free;
  end;
  DS_TBenchRecord266 := TDictionary<string, TBenchRecord266>.Create;
  try
    DS_TBenchRecord266.Add('key', Default(TBenchRecord266));
  finally
    DS_TBenchRecord266.Free;
  end;
  DI_TBenchRecord266 := TDictionary<Integer, TBenchRecord266>.Create;
  try
    DI_TBenchRecord266.Add(1, Default(TBenchRecord266));
  finally
    DI_TBenchRecord266.Free;
  end;
  DG_TBenchRecord266 := TDictionary<TGUID, TBenchRecord266>.Create;
  try
    DG_TBenchRecord266.Add(TGUID.Empty, Default(TBenchRecord266));
  finally
    DG_TBenchRecord266.Free;
  end;
  DS_TBenchRecord267 := TDictionary<string, TBenchRecord267>.Create;
  try
    DS_TBenchRecord267.Add('key', Default(TBenchRecord267));
  finally
    DS_TBenchRecord267.Free;
  end;
  DI_TBenchRecord267 := TDictionary<Integer, TBenchRecord267>.Create;
  try
    DI_TBenchRecord267.Add(1, Default(TBenchRecord267));
  finally
    DI_TBenchRecord267.Free;
  end;
  DG_TBenchRecord267 := TDictionary<TGUID, TBenchRecord267>.Create;
  try
    DG_TBenchRecord267.Add(TGUID.Empty, Default(TBenchRecord267));
  finally
    DG_TBenchRecord267.Free;
  end;
  DS_TBenchRecord268 := TDictionary<string, TBenchRecord268>.Create;
  try
    DS_TBenchRecord268.Add('key', Default(TBenchRecord268));
  finally
    DS_TBenchRecord268.Free;
  end;
  DI_TBenchRecord268 := TDictionary<Integer, TBenchRecord268>.Create;
  try
    DI_TBenchRecord268.Add(1, Default(TBenchRecord268));
  finally
    DI_TBenchRecord268.Free;
  end;
  DG_TBenchRecord268 := TDictionary<TGUID, TBenchRecord268>.Create;
  try
    DG_TBenchRecord268.Add(TGUID.Empty, Default(TBenchRecord268));
  finally
    DG_TBenchRecord268.Free;
  end;
  DS_TBenchRecord269 := TDictionary<string, TBenchRecord269>.Create;
  try
    DS_TBenchRecord269.Add('key', Default(TBenchRecord269));
  finally
    DS_TBenchRecord269.Free;
  end;
  DI_TBenchRecord269 := TDictionary<Integer, TBenchRecord269>.Create;
  try
    DI_TBenchRecord269.Add(1, Default(TBenchRecord269));
  finally
    DI_TBenchRecord269.Free;
  end;
  DG_TBenchRecord269 := TDictionary<TGUID, TBenchRecord269>.Create;
  try
    DG_TBenchRecord269.Add(TGUID.Empty, Default(TBenchRecord269));
  finally
    DG_TBenchRecord269.Free;
  end;
  DS_TBenchRecord270 := TDictionary<string, TBenchRecord270>.Create;
  try
    DS_TBenchRecord270.Add('key', Default(TBenchRecord270));
  finally
    DS_TBenchRecord270.Free;
  end;
  DI_TBenchRecord270 := TDictionary<Integer, TBenchRecord270>.Create;
  try
    DI_TBenchRecord270.Add(1, Default(TBenchRecord270));
  finally
    DI_TBenchRecord270.Free;
  end;
  DG_TBenchRecord270 := TDictionary<TGUID, TBenchRecord270>.Create;
  try
    DG_TBenchRecord270.Add(TGUID.Empty, Default(TBenchRecord270));
  finally
    DG_TBenchRecord270.Free;
  end;
  DS_TBenchRecord271 := TDictionary<string, TBenchRecord271>.Create;
  try
    DS_TBenchRecord271.Add('key', Default(TBenchRecord271));
  finally
    DS_TBenchRecord271.Free;
  end;
  DI_TBenchRecord271 := TDictionary<Integer, TBenchRecord271>.Create;
  try
    DI_TBenchRecord271.Add(1, Default(TBenchRecord271));
  finally
    DI_TBenchRecord271.Free;
  end;
  DG_TBenchRecord271 := TDictionary<TGUID, TBenchRecord271>.Create;
  try
    DG_TBenchRecord271.Add(TGUID.Empty, Default(TBenchRecord271));
  finally
    DG_TBenchRecord271.Free;
  end;
  DS_TBenchRecord272 := TDictionary<string, TBenchRecord272>.Create;
  try
    DS_TBenchRecord272.Add('key', Default(TBenchRecord272));
  finally
    DS_TBenchRecord272.Free;
  end;
  DI_TBenchRecord272 := TDictionary<Integer, TBenchRecord272>.Create;
  try
    DI_TBenchRecord272.Add(1, Default(TBenchRecord272));
  finally
    DI_TBenchRecord272.Free;
  end;
  DG_TBenchRecord272 := TDictionary<TGUID, TBenchRecord272>.Create;
  try
    DG_TBenchRecord272.Add(TGUID.Empty, Default(TBenchRecord272));
  finally
    DG_TBenchRecord272.Free;
  end;
  DS_TBenchRecord273 := TDictionary<string, TBenchRecord273>.Create;
  try
    DS_TBenchRecord273.Add('key', Default(TBenchRecord273));
  finally
    DS_TBenchRecord273.Free;
  end;
  DI_TBenchRecord273 := TDictionary<Integer, TBenchRecord273>.Create;
  try
    DI_TBenchRecord273.Add(1, Default(TBenchRecord273));
  finally
    DI_TBenchRecord273.Free;
  end;
  DG_TBenchRecord273 := TDictionary<TGUID, TBenchRecord273>.Create;
  try
    DG_TBenchRecord273.Add(TGUID.Empty, Default(TBenchRecord273));
  finally
    DG_TBenchRecord273.Free;
  end;
  DS_TBenchRecord274 := TDictionary<string, TBenchRecord274>.Create;
  try
    DS_TBenchRecord274.Add('key', Default(TBenchRecord274));
  finally
    DS_TBenchRecord274.Free;
  end;
  DI_TBenchRecord274 := TDictionary<Integer, TBenchRecord274>.Create;
  try
    DI_TBenchRecord274.Add(1, Default(TBenchRecord274));
  finally
    DI_TBenchRecord274.Free;
  end;
  DG_TBenchRecord274 := TDictionary<TGUID, TBenchRecord274>.Create;
  try
    DG_TBenchRecord274.Add(TGUID.Empty, Default(TBenchRecord274));
  finally
    DG_TBenchRecord274.Free;
  end;
  DS_TBenchRecord275 := TDictionary<string, TBenchRecord275>.Create;
  try
    DS_TBenchRecord275.Add('key', Default(TBenchRecord275));
  finally
    DS_TBenchRecord275.Free;
  end;
  DI_TBenchRecord275 := TDictionary<Integer, TBenchRecord275>.Create;
  try
    DI_TBenchRecord275.Add(1, Default(TBenchRecord275));
  finally
    DI_TBenchRecord275.Free;
  end;
  DG_TBenchRecord275 := TDictionary<TGUID, TBenchRecord275>.Create;
  try
    DG_TBenchRecord275.Add(TGUID.Empty, Default(TBenchRecord275));
  finally
    DG_TBenchRecord275.Free;
  end;
  DS_TBenchRecord276 := TDictionary<string, TBenchRecord276>.Create;
  try
    DS_TBenchRecord276.Add('key', Default(TBenchRecord276));
  finally
    DS_TBenchRecord276.Free;
  end;
  DI_TBenchRecord276 := TDictionary<Integer, TBenchRecord276>.Create;
  try
    DI_TBenchRecord276.Add(1, Default(TBenchRecord276));
  finally
    DI_TBenchRecord276.Free;
  end;
  DG_TBenchRecord276 := TDictionary<TGUID, TBenchRecord276>.Create;
  try
    DG_TBenchRecord276.Add(TGUID.Empty, Default(TBenchRecord276));
  finally
    DG_TBenchRecord276.Free;
  end;
  DS_TBenchRecord277 := TDictionary<string, TBenchRecord277>.Create;
  try
    DS_TBenchRecord277.Add('key', Default(TBenchRecord277));
  finally
    DS_TBenchRecord277.Free;
  end;
  DI_TBenchRecord277 := TDictionary<Integer, TBenchRecord277>.Create;
  try
    DI_TBenchRecord277.Add(1, Default(TBenchRecord277));
  finally
    DI_TBenchRecord277.Free;
  end;
  DG_TBenchRecord277 := TDictionary<TGUID, TBenchRecord277>.Create;
  try
    DG_TBenchRecord277.Add(TGUID.Empty, Default(TBenchRecord277));
  finally
    DG_TBenchRecord277.Free;
  end;
  DS_TBenchRecord278 := TDictionary<string, TBenchRecord278>.Create;
  try
    DS_TBenchRecord278.Add('key', Default(TBenchRecord278));
  finally
    DS_TBenchRecord278.Free;
  end;
  DI_TBenchRecord278 := TDictionary<Integer, TBenchRecord278>.Create;
  try
    DI_TBenchRecord278.Add(1, Default(TBenchRecord278));
  finally
    DI_TBenchRecord278.Free;
  end;
  DG_TBenchRecord278 := TDictionary<TGUID, TBenchRecord278>.Create;
  try
    DG_TBenchRecord278.Add(TGUID.Empty, Default(TBenchRecord278));
  finally
    DG_TBenchRecord278.Free;
  end;
  DS_TBenchRecord279 := TDictionary<string, TBenchRecord279>.Create;
  try
    DS_TBenchRecord279.Add('key', Default(TBenchRecord279));
  finally
    DS_TBenchRecord279.Free;
  end;
  DI_TBenchRecord279 := TDictionary<Integer, TBenchRecord279>.Create;
  try
    DI_TBenchRecord279.Add(1, Default(TBenchRecord279));
  finally
    DI_TBenchRecord279.Free;
  end;
  DG_TBenchRecord279 := TDictionary<TGUID, TBenchRecord279>.Create;
  try
    DG_TBenchRecord279.Add(TGUID.Empty, Default(TBenchRecord279));
  finally
    DG_TBenchRecord279.Free;
  end;
  DS_TBenchRecord280 := TDictionary<string, TBenchRecord280>.Create;
  try
    DS_TBenchRecord280.Add('key', Default(TBenchRecord280));
  finally
    DS_TBenchRecord280.Free;
  end;
  DI_TBenchRecord280 := TDictionary<Integer, TBenchRecord280>.Create;
  try
    DI_TBenchRecord280.Add(1, Default(TBenchRecord280));
  finally
    DI_TBenchRecord280.Free;
  end;
  DG_TBenchRecord280 := TDictionary<TGUID, TBenchRecord280>.Create;
  try
    DG_TBenchRecord280.Add(TGUID.Empty, Default(TBenchRecord280));
  finally
    DG_TBenchRecord280.Free;
  end;
  DS_TBenchRecord281 := TDictionary<string, TBenchRecord281>.Create;
  try
    DS_TBenchRecord281.Add('key', Default(TBenchRecord281));
  finally
    DS_TBenchRecord281.Free;
  end;
  DI_TBenchRecord281 := TDictionary<Integer, TBenchRecord281>.Create;
  try
    DI_TBenchRecord281.Add(1, Default(TBenchRecord281));
  finally
    DI_TBenchRecord281.Free;
  end;
  DG_TBenchRecord281 := TDictionary<TGUID, TBenchRecord281>.Create;
  try
    DG_TBenchRecord281.Add(TGUID.Empty, Default(TBenchRecord281));
  finally
    DG_TBenchRecord281.Free;
  end;
  DS_TBenchRecord282 := TDictionary<string, TBenchRecord282>.Create;
  try
    DS_TBenchRecord282.Add('key', Default(TBenchRecord282));
  finally
    DS_TBenchRecord282.Free;
  end;
  DI_TBenchRecord282 := TDictionary<Integer, TBenchRecord282>.Create;
  try
    DI_TBenchRecord282.Add(1, Default(TBenchRecord282));
  finally
    DI_TBenchRecord282.Free;
  end;
  DG_TBenchRecord282 := TDictionary<TGUID, TBenchRecord282>.Create;
  try
    DG_TBenchRecord282.Add(TGUID.Empty, Default(TBenchRecord282));
  finally
    DG_TBenchRecord282.Free;
  end;
  DS_TBenchRecord283 := TDictionary<string, TBenchRecord283>.Create;
  try
    DS_TBenchRecord283.Add('key', Default(TBenchRecord283));
  finally
    DS_TBenchRecord283.Free;
  end;
  DI_TBenchRecord283 := TDictionary<Integer, TBenchRecord283>.Create;
  try
    DI_TBenchRecord283.Add(1, Default(TBenchRecord283));
  finally
    DI_TBenchRecord283.Free;
  end;
  DG_TBenchRecord283 := TDictionary<TGUID, TBenchRecord283>.Create;
  try
    DG_TBenchRecord283.Add(TGUID.Empty, Default(TBenchRecord283));
  finally
    DG_TBenchRecord283.Free;
  end;
  DS_TBenchRecord284 := TDictionary<string, TBenchRecord284>.Create;
  try
    DS_TBenchRecord284.Add('key', Default(TBenchRecord284));
  finally
    DS_TBenchRecord284.Free;
  end;
  DI_TBenchRecord284 := TDictionary<Integer, TBenchRecord284>.Create;
  try
    DI_TBenchRecord284.Add(1, Default(TBenchRecord284));
  finally
    DI_TBenchRecord284.Free;
  end;
  DG_TBenchRecord284 := TDictionary<TGUID, TBenchRecord284>.Create;
  try
    DG_TBenchRecord284.Add(TGUID.Empty, Default(TBenchRecord284));
  finally
    DG_TBenchRecord284.Free;
  end;
  DS_TBenchRecord285 := TDictionary<string, TBenchRecord285>.Create;
  try
    DS_TBenchRecord285.Add('key', Default(TBenchRecord285));
  finally
    DS_TBenchRecord285.Free;
  end;
  DI_TBenchRecord285 := TDictionary<Integer, TBenchRecord285>.Create;
  try
    DI_TBenchRecord285.Add(1, Default(TBenchRecord285));
  finally
    DI_TBenchRecord285.Free;
  end;
  DG_TBenchRecord285 := TDictionary<TGUID, TBenchRecord285>.Create;
  try
    DG_TBenchRecord285.Add(TGUID.Empty, Default(TBenchRecord285));
  finally
    DG_TBenchRecord285.Free;
  end;
  DS_TBenchRecord286 := TDictionary<string, TBenchRecord286>.Create;
  try
    DS_TBenchRecord286.Add('key', Default(TBenchRecord286));
  finally
    DS_TBenchRecord286.Free;
  end;
  DI_TBenchRecord286 := TDictionary<Integer, TBenchRecord286>.Create;
  try
    DI_TBenchRecord286.Add(1, Default(TBenchRecord286));
  finally
    DI_TBenchRecord286.Free;
  end;
  DG_TBenchRecord286 := TDictionary<TGUID, TBenchRecord286>.Create;
  try
    DG_TBenchRecord286.Add(TGUID.Empty, Default(TBenchRecord286));
  finally
    DG_TBenchRecord286.Free;
  end;
  DS_TBenchRecord287 := TDictionary<string, TBenchRecord287>.Create;
  try
    DS_TBenchRecord287.Add('key', Default(TBenchRecord287));
  finally
    DS_TBenchRecord287.Free;
  end;
  DI_TBenchRecord287 := TDictionary<Integer, TBenchRecord287>.Create;
  try
    DI_TBenchRecord287.Add(1, Default(TBenchRecord287));
  finally
    DI_TBenchRecord287.Free;
  end;
  DG_TBenchRecord287 := TDictionary<TGUID, TBenchRecord287>.Create;
  try
    DG_TBenchRecord287.Add(TGUID.Empty, Default(TBenchRecord287));
  finally
    DG_TBenchRecord287.Free;
  end;
  DS_TBenchRecord288 := TDictionary<string, TBenchRecord288>.Create;
  try
    DS_TBenchRecord288.Add('key', Default(TBenchRecord288));
  finally
    DS_TBenchRecord288.Free;
  end;
  DI_TBenchRecord288 := TDictionary<Integer, TBenchRecord288>.Create;
  try
    DI_TBenchRecord288.Add(1, Default(TBenchRecord288));
  finally
    DI_TBenchRecord288.Free;
  end;
  DG_TBenchRecord288 := TDictionary<TGUID, TBenchRecord288>.Create;
  try
    DG_TBenchRecord288.Add(TGUID.Empty, Default(TBenchRecord288));
  finally
    DG_TBenchRecord288.Free;
  end;
  DS_TBenchRecord289 := TDictionary<string, TBenchRecord289>.Create;
  try
    DS_TBenchRecord289.Add('key', Default(TBenchRecord289));
  finally
    DS_TBenchRecord289.Free;
  end;
  DI_TBenchRecord289 := TDictionary<Integer, TBenchRecord289>.Create;
  try
    DI_TBenchRecord289.Add(1, Default(TBenchRecord289));
  finally
    DI_TBenchRecord289.Free;
  end;
  DG_TBenchRecord289 := TDictionary<TGUID, TBenchRecord289>.Create;
  try
    DG_TBenchRecord289.Add(TGUID.Empty, Default(TBenchRecord289));
  finally
    DG_TBenchRecord289.Free;
  end;
  DS_TBenchRecord290 := TDictionary<string, TBenchRecord290>.Create;
  try
    DS_TBenchRecord290.Add('key', Default(TBenchRecord290));
  finally
    DS_TBenchRecord290.Free;
  end;
  DI_TBenchRecord290 := TDictionary<Integer, TBenchRecord290>.Create;
  try
    DI_TBenchRecord290.Add(1, Default(TBenchRecord290));
  finally
    DI_TBenchRecord290.Free;
  end;
  DG_TBenchRecord290 := TDictionary<TGUID, TBenchRecord290>.Create;
  try
    DG_TBenchRecord290.Add(TGUID.Empty, Default(TBenchRecord290));
  finally
    DG_TBenchRecord290.Free;
  end;
  DS_TBenchRecord291 := TDictionary<string, TBenchRecord291>.Create;
  try
    DS_TBenchRecord291.Add('key', Default(TBenchRecord291));
  finally
    DS_TBenchRecord291.Free;
  end;
  DI_TBenchRecord291 := TDictionary<Integer, TBenchRecord291>.Create;
  try
    DI_TBenchRecord291.Add(1, Default(TBenchRecord291));
  finally
    DI_TBenchRecord291.Free;
  end;
  DG_TBenchRecord291 := TDictionary<TGUID, TBenchRecord291>.Create;
  try
    DG_TBenchRecord291.Add(TGUID.Empty, Default(TBenchRecord291));
  finally
    DG_TBenchRecord291.Free;
  end;
  DS_TBenchRecord292 := TDictionary<string, TBenchRecord292>.Create;
  try
    DS_TBenchRecord292.Add('key', Default(TBenchRecord292));
  finally
    DS_TBenchRecord292.Free;
  end;
  DI_TBenchRecord292 := TDictionary<Integer, TBenchRecord292>.Create;
  try
    DI_TBenchRecord292.Add(1, Default(TBenchRecord292));
  finally
    DI_TBenchRecord292.Free;
  end;
  DG_TBenchRecord292 := TDictionary<TGUID, TBenchRecord292>.Create;
  try
    DG_TBenchRecord292.Add(TGUID.Empty, Default(TBenchRecord292));
  finally
    DG_TBenchRecord292.Free;
  end;
  DS_TBenchRecord293 := TDictionary<string, TBenchRecord293>.Create;
  try
    DS_TBenchRecord293.Add('key', Default(TBenchRecord293));
  finally
    DS_TBenchRecord293.Free;
  end;
  DI_TBenchRecord293 := TDictionary<Integer, TBenchRecord293>.Create;
  try
    DI_TBenchRecord293.Add(1, Default(TBenchRecord293));
  finally
    DI_TBenchRecord293.Free;
  end;
  DG_TBenchRecord293 := TDictionary<TGUID, TBenchRecord293>.Create;
  try
    DG_TBenchRecord293.Add(TGUID.Empty, Default(TBenchRecord293));
  finally
    DG_TBenchRecord293.Free;
  end;
  DS_TBenchRecord294 := TDictionary<string, TBenchRecord294>.Create;
  try
    DS_TBenchRecord294.Add('key', Default(TBenchRecord294));
  finally
    DS_TBenchRecord294.Free;
  end;
  DI_TBenchRecord294 := TDictionary<Integer, TBenchRecord294>.Create;
  try
    DI_TBenchRecord294.Add(1, Default(TBenchRecord294));
  finally
    DI_TBenchRecord294.Free;
  end;
  DG_TBenchRecord294 := TDictionary<TGUID, TBenchRecord294>.Create;
  try
    DG_TBenchRecord294.Add(TGUID.Empty, Default(TBenchRecord294));
  finally
    DG_TBenchRecord294.Free;
  end;
  DS_TBenchRecord295 := TDictionary<string, TBenchRecord295>.Create;
  try
    DS_TBenchRecord295.Add('key', Default(TBenchRecord295));
  finally
    DS_TBenchRecord295.Free;
  end;
  DI_TBenchRecord295 := TDictionary<Integer, TBenchRecord295>.Create;
  try
    DI_TBenchRecord295.Add(1, Default(TBenchRecord295));
  finally
    DI_TBenchRecord295.Free;
  end;
  DG_TBenchRecord295 := TDictionary<TGUID, TBenchRecord295>.Create;
  try
    DG_TBenchRecord295.Add(TGUID.Empty, Default(TBenchRecord295));
  finally
    DG_TBenchRecord295.Free;
  end;
  DS_TBenchRecord296 := TDictionary<string, TBenchRecord296>.Create;
  try
    DS_TBenchRecord296.Add('key', Default(TBenchRecord296));
  finally
    DS_TBenchRecord296.Free;
  end;
  DI_TBenchRecord296 := TDictionary<Integer, TBenchRecord296>.Create;
  try
    DI_TBenchRecord296.Add(1, Default(TBenchRecord296));
  finally
    DI_TBenchRecord296.Free;
  end;
  DG_TBenchRecord296 := TDictionary<TGUID, TBenchRecord296>.Create;
  try
    DG_TBenchRecord296.Add(TGUID.Empty, Default(TBenchRecord296));
  finally
    DG_TBenchRecord296.Free;
  end;
  DS_TBenchRecord297 := TDictionary<string, TBenchRecord297>.Create;
  try
    DS_TBenchRecord297.Add('key', Default(TBenchRecord297));
  finally
    DS_TBenchRecord297.Free;
  end;
  DI_TBenchRecord297 := TDictionary<Integer, TBenchRecord297>.Create;
  try
    DI_TBenchRecord297.Add(1, Default(TBenchRecord297));
  finally
    DI_TBenchRecord297.Free;
  end;
  DG_TBenchRecord297 := TDictionary<TGUID, TBenchRecord297>.Create;
  try
    DG_TBenchRecord297.Add(TGUID.Empty, Default(TBenchRecord297));
  finally
    DG_TBenchRecord297.Free;
  end;
  DS_TBenchRecord298 := TDictionary<string, TBenchRecord298>.Create;
  try
    DS_TBenchRecord298.Add('key', Default(TBenchRecord298));
  finally
    DS_TBenchRecord298.Free;
  end;
  DI_TBenchRecord298 := TDictionary<Integer, TBenchRecord298>.Create;
  try
    DI_TBenchRecord298.Add(1, Default(TBenchRecord298));
  finally
    DI_TBenchRecord298.Free;
  end;
  DG_TBenchRecord298 := TDictionary<TGUID, TBenchRecord298>.Create;
  try
    DG_TBenchRecord298.Add(TGUID.Empty, Default(TBenchRecord298));
  finally
    DG_TBenchRecord298.Free;
  end;
  DS_TBenchRecord299 := TDictionary<string, TBenchRecord299>.Create;
  try
    DS_TBenchRecord299.Add('key', Default(TBenchRecord299));
  finally
    DS_TBenchRecord299.Free;
  end;
  DI_TBenchRecord299 := TDictionary<Integer, TBenchRecord299>.Create;
  try
    DI_TBenchRecord299.Add(1, Default(TBenchRecord299));
  finally
    DI_TBenchRecord299.Free;
  end;
  DG_TBenchRecord299 := TDictionary<TGUID, TBenchRecord299>.Create;
  try
    DG_TBenchRecord299.Add(TGUID.Empty, Default(TBenchRecord299));
  finally
    DG_TBenchRecord299.Free;
  end;
  DS_TBenchRecord300 := TDictionary<string, TBenchRecord300>.Create;
  try
    DS_TBenchRecord300.Add('key', Default(TBenchRecord300));
  finally
    DS_TBenchRecord300.Free;
  end;
  DI_TBenchRecord300 := TDictionary<Integer, TBenchRecord300>.Create;
  try
    DI_TBenchRecord300.Add(1, Default(TBenchRecord300));
  finally
    DI_TBenchRecord300.Free;
  end;
  DG_TBenchRecord300 := TDictionary<TGUID, TBenchRecord300>.Create;
  try
    DG_TBenchRecord300.Add(TGUID.Empty, Default(TBenchRecord300));
  finally
    DG_TBenchRecord300.Free;
  end;
  DS_TBenchRecord301 := TDictionary<string, TBenchRecord301>.Create;
  try
    DS_TBenchRecord301.Add('key', Default(TBenchRecord301));
  finally
    DS_TBenchRecord301.Free;
  end;
  DI_TBenchRecord301 := TDictionary<Integer, TBenchRecord301>.Create;
  try
    DI_TBenchRecord301.Add(1, Default(TBenchRecord301));
  finally
    DI_TBenchRecord301.Free;
  end;
  DG_TBenchRecord301 := TDictionary<TGUID, TBenchRecord301>.Create;
  try
    DG_TBenchRecord301.Add(TGUID.Empty, Default(TBenchRecord301));
  finally
    DG_TBenchRecord301.Free;
  end;
  DS_TBenchRecord302 := TDictionary<string, TBenchRecord302>.Create;
  try
    DS_TBenchRecord302.Add('key', Default(TBenchRecord302));
  finally
    DS_TBenchRecord302.Free;
  end;
  DI_TBenchRecord302 := TDictionary<Integer, TBenchRecord302>.Create;
  try
    DI_TBenchRecord302.Add(1, Default(TBenchRecord302));
  finally
    DI_TBenchRecord302.Free;
  end;
  DG_TBenchRecord302 := TDictionary<TGUID, TBenchRecord302>.Create;
  try
    DG_TBenchRecord302.Add(TGUID.Empty, Default(TBenchRecord302));
  finally
    DG_TBenchRecord302.Free;
  end;
  DS_TBenchRecord303 := TDictionary<string, TBenchRecord303>.Create;
  try
    DS_TBenchRecord303.Add('key', Default(TBenchRecord303));
  finally
    DS_TBenchRecord303.Free;
  end;
  DI_TBenchRecord303 := TDictionary<Integer, TBenchRecord303>.Create;
  try
    DI_TBenchRecord303.Add(1, Default(TBenchRecord303));
  finally
    DI_TBenchRecord303.Free;
  end;
  DG_TBenchRecord303 := TDictionary<TGUID, TBenchRecord303>.Create;
  try
    DG_TBenchRecord303.Add(TGUID.Empty, Default(TBenchRecord303));
  finally
    DG_TBenchRecord303.Free;
  end;
  DS_TBenchRecord304 := TDictionary<string, TBenchRecord304>.Create;
  try
    DS_TBenchRecord304.Add('key', Default(TBenchRecord304));
  finally
    DS_TBenchRecord304.Free;
  end;
  DI_TBenchRecord304 := TDictionary<Integer, TBenchRecord304>.Create;
  try
    DI_TBenchRecord304.Add(1, Default(TBenchRecord304));
  finally
    DI_TBenchRecord304.Free;
  end;
  DG_TBenchRecord304 := TDictionary<TGUID, TBenchRecord304>.Create;
  try
    DG_TBenchRecord304.Add(TGUID.Empty, Default(TBenchRecord304));
  finally
    DG_TBenchRecord304.Free;
  end;
  DS_TBenchRecord305 := TDictionary<string, TBenchRecord305>.Create;
  try
    DS_TBenchRecord305.Add('key', Default(TBenchRecord305));
  finally
    DS_TBenchRecord305.Free;
  end;
  DI_TBenchRecord305 := TDictionary<Integer, TBenchRecord305>.Create;
  try
    DI_TBenchRecord305.Add(1, Default(TBenchRecord305));
  finally
    DI_TBenchRecord305.Free;
  end;
  DG_TBenchRecord305 := TDictionary<TGUID, TBenchRecord305>.Create;
  try
    DG_TBenchRecord305.Add(TGUID.Empty, Default(TBenchRecord305));
  finally
    DG_TBenchRecord305.Free;
  end;
  DS_TBenchRecord306 := TDictionary<string, TBenchRecord306>.Create;
  try
    DS_TBenchRecord306.Add('key', Default(TBenchRecord306));
  finally
    DS_TBenchRecord306.Free;
  end;
  DI_TBenchRecord306 := TDictionary<Integer, TBenchRecord306>.Create;
  try
    DI_TBenchRecord306.Add(1, Default(TBenchRecord306));
  finally
    DI_TBenchRecord306.Free;
  end;
  DG_TBenchRecord306 := TDictionary<TGUID, TBenchRecord306>.Create;
  try
    DG_TBenchRecord306.Add(TGUID.Empty, Default(TBenchRecord306));
  finally
    DG_TBenchRecord306.Free;
  end;
  DS_TBenchRecord307 := TDictionary<string, TBenchRecord307>.Create;
  try
    DS_TBenchRecord307.Add('key', Default(TBenchRecord307));
  finally
    DS_TBenchRecord307.Free;
  end;
  DI_TBenchRecord307 := TDictionary<Integer, TBenchRecord307>.Create;
  try
    DI_TBenchRecord307.Add(1, Default(TBenchRecord307));
  finally
    DI_TBenchRecord307.Free;
  end;
  DG_TBenchRecord307 := TDictionary<TGUID, TBenchRecord307>.Create;
  try
    DG_TBenchRecord307.Add(TGUID.Empty, Default(TBenchRecord307));
  finally
    DG_TBenchRecord307.Free;
  end;
  DS_TBenchRecord308 := TDictionary<string, TBenchRecord308>.Create;
  try
    DS_TBenchRecord308.Add('key', Default(TBenchRecord308));
  finally
    DS_TBenchRecord308.Free;
  end;
  DI_TBenchRecord308 := TDictionary<Integer, TBenchRecord308>.Create;
  try
    DI_TBenchRecord308.Add(1, Default(TBenchRecord308));
  finally
    DI_TBenchRecord308.Free;
  end;
  DG_TBenchRecord308 := TDictionary<TGUID, TBenchRecord308>.Create;
  try
    DG_TBenchRecord308.Add(TGUID.Empty, Default(TBenchRecord308));
  finally
    DG_TBenchRecord308.Free;
  end;
  DS_TBenchRecord309 := TDictionary<string, TBenchRecord309>.Create;
  try
    DS_TBenchRecord309.Add('key', Default(TBenchRecord309));
  finally
    DS_TBenchRecord309.Free;
  end;
  DI_TBenchRecord309 := TDictionary<Integer, TBenchRecord309>.Create;
  try
    DI_TBenchRecord309.Add(1, Default(TBenchRecord309));
  finally
    DI_TBenchRecord309.Free;
  end;
  DG_TBenchRecord309 := TDictionary<TGUID, TBenchRecord309>.Create;
  try
    DG_TBenchRecord309.Add(TGUID.Empty, Default(TBenchRecord309));
  finally
    DG_TBenchRecord309.Free;
  end;
  DS_TBenchRecord310 := TDictionary<string, TBenchRecord310>.Create;
  try
    DS_TBenchRecord310.Add('key', Default(TBenchRecord310));
  finally
    DS_TBenchRecord310.Free;
  end;
  DI_TBenchRecord310 := TDictionary<Integer, TBenchRecord310>.Create;
  try
    DI_TBenchRecord310.Add(1, Default(TBenchRecord310));
  finally
    DI_TBenchRecord310.Free;
  end;
  DG_TBenchRecord310 := TDictionary<TGUID, TBenchRecord310>.Create;
  try
    DG_TBenchRecord310.Add(TGUID.Empty, Default(TBenchRecord310));
  finally
    DG_TBenchRecord310.Free;
  end;
  DS_TBenchRecord311 := TDictionary<string, TBenchRecord311>.Create;
  try
    DS_TBenchRecord311.Add('key', Default(TBenchRecord311));
  finally
    DS_TBenchRecord311.Free;
  end;
  DI_TBenchRecord311 := TDictionary<Integer, TBenchRecord311>.Create;
  try
    DI_TBenchRecord311.Add(1, Default(TBenchRecord311));
  finally
    DI_TBenchRecord311.Free;
  end;
  DG_TBenchRecord311 := TDictionary<TGUID, TBenchRecord311>.Create;
  try
    DG_TBenchRecord311.Add(TGUID.Empty, Default(TBenchRecord311));
  finally
    DG_TBenchRecord311.Free;
  end;
  DS_TBenchRecord312 := TDictionary<string, TBenchRecord312>.Create;
  try
    DS_TBenchRecord312.Add('key', Default(TBenchRecord312));
  finally
    DS_TBenchRecord312.Free;
  end;
  DI_TBenchRecord312 := TDictionary<Integer, TBenchRecord312>.Create;
  try
    DI_TBenchRecord312.Add(1, Default(TBenchRecord312));
  finally
    DI_TBenchRecord312.Free;
  end;
  DG_TBenchRecord312 := TDictionary<TGUID, TBenchRecord312>.Create;
  try
    DG_TBenchRecord312.Add(TGUID.Empty, Default(TBenchRecord312));
  finally
    DG_TBenchRecord312.Free;
  end;
  DS_TBenchRecord313 := TDictionary<string, TBenchRecord313>.Create;
  try
    DS_TBenchRecord313.Add('key', Default(TBenchRecord313));
  finally
    DS_TBenchRecord313.Free;
  end;
  DI_TBenchRecord313 := TDictionary<Integer, TBenchRecord313>.Create;
  try
    DI_TBenchRecord313.Add(1, Default(TBenchRecord313));
  finally
    DI_TBenchRecord313.Free;
  end;
  DG_TBenchRecord313 := TDictionary<TGUID, TBenchRecord313>.Create;
  try
    DG_TBenchRecord313.Add(TGUID.Empty, Default(TBenchRecord313));
  finally
    DG_TBenchRecord313.Free;
  end;
  DS_TBenchRecord314 := TDictionary<string, TBenchRecord314>.Create;
  try
    DS_TBenchRecord314.Add('key', Default(TBenchRecord314));
  finally
    DS_TBenchRecord314.Free;
  end;
  DI_TBenchRecord314 := TDictionary<Integer, TBenchRecord314>.Create;
  try
    DI_TBenchRecord314.Add(1, Default(TBenchRecord314));
  finally
    DI_TBenchRecord314.Free;
  end;
  DG_TBenchRecord314 := TDictionary<TGUID, TBenchRecord314>.Create;
  try
    DG_TBenchRecord314.Add(TGUID.Empty, Default(TBenchRecord314));
  finally
    DG_TBenchRecord314.Free;
  end;
  DS_TBenchRecord315 := TDictionary<string, TBenchRecord315>.Create;
  try
    DS_TBenchRecord315.Add('key', Default(TBenchRecord315));
  finally
    DS_TBenchRecord315.Free;
  end;
  DI_TBenchRecord315 := TDictionary<Integer, TBenchRecord315>.Create;
  try
    DI_TBenchRecord315.Add(1, Default(TBenchRecord315));
  finally
    DI_TBenchRecord315.Free;
  end;
  DG_TBenchRecord315 := TDictionary<TGUID, TBenchRecord315>.Create;
  try
    DG_TBenchRecord315.Add(TGUID.Empty, Default(TBenchRecord315));
  finally
    DG_TBenchRecord315.Free;
  end;
  DS_TBenchRecord316 := TDictionary<string, TBenchRecord316>.Create;
  try
    DS_TBenchRecord316.Add('key', Default(TBenchRecord316));
  finally
    DS_TBenchRecord316.Free;
  end;
  DI_TBenchRecord316 := TDictionary<Integer, TBenchRecord316>.Create;
  try
    DI_TBenchRecord316.Add(1, Default(TBenchRecord316));
  finally
    DI_TBenchRecord316.Free;
  end;
  DG_TBenchRecord316 := TDictionary<TGUID, TBenchRecord316>.Create;
  try
    DG_TBenchRecord316.Add(TGUID.Empty, Default(TBenchRecord316));
  finally
    DG_TBenchRecord316.Free;
  end;
  DS_TBenchRecord317 := TDictionary<string, TBenchRecord317>.Create;
  try
    DS_TBenchRecord317.Add('key', Default(TBenchRecord317));
  finally
    DS_TBenchRecord317.Free;
  end;
  DI_TBenchRecord317 := TDictionary<Integer, TBenchRecord317>.Create;
  try
    DI_TBenchRecord317.Add(1, Default(TBenchRecord317));
  finally
    DI_TBenchRecord317.Free;
  end;
  DG_TBenchRecord317 := TDictionary<TGUID, TBenchRecord317>.Create;
  try
    DG_TBenchRecord317.Add(TGUID.Empty, Default(TBenchRecord317));
  finally
    DG_TBenchRecord317.Free;
  end;
  DS_TBenchRecord318 := TDictionary<string, TBenchRecord318>.Create;
  try
    DS_TBenchRecord318.Add('key', Default(TBenchRecord318));
  finally
    DS_TBenchRecord318.Free;
  end;
  DI_TBenchRecord318 := TDictionary<Integer, TBenchRecord318>.Create;
  try
    DI_TBenchRecord318.Add(1, Default(TBenchRecord318));
  finally
    DI_TBenchRecord318.Free;
  end;
  DG_TBenchRecord318 := TDictionary<TGUID, TBenchRecord318>.Create;
  try
    DG_TBenchRecord318.Add(TGUID.Empty, Default(TBenchRecord318));
  finally
    DG_TBenchRecord318.Free;
  end;
  DS_TBenchRecord319 := TDictionary<string, TBenchRecord319>.Create;
  try
    DS_TBenchRecord319.Add('key', Default(TBenchRecord319));
  finally
    DS_TBenchRecord319.Free;
  end;
  DI_TBenchRecord319 := TDictionary<Integer, TBenchRecord319>.Create;
  try
    DI_TBenchRecord319.Add(1, Default(TBenchRecord319));
  finally
    DI_TBenchRecord319.Free;
  end;
  DG_TBenchRecord319 := TDictionary<TGUID, TBenchRecord319>.Create;
  try
    DG_TBenchRecord319.Add(TGUID.Empty, Default(TBenchRecord319));
  finally
    DG_TBenchRecord319.Free;
  end;
  DS_TBenchRecord320 := TDictionary<string, TBenchRecord320>.Create;
  try
    DS_TBenchRecord320.Add('key', Default(TBenchRecord320));
  finally
    DS_TBenchRecord320.Free;
  end;
  DI_TBenchRecord320 := TDictionary<Integer, TBenchRecord320>.Create;
  try
    DI_TBenchRecord320.Add(1, Default(TBenchRecord320));
  finally
    DI_TBenchRecord320.Free;
  end;
  DG_TBenchRecord320 := TDictionary<TGUID, TBenchRecord320>.Create;
  try
    DG_TBenchRecord320.Add(TGUID.Empty, Default(TBenchRecord320));
  finally
    DG_TBenchRecord320.Free;
  end;
  DS_TBenchRecord321 := TDictionary<string, TBenchRecord321>.Create;
  try
    DS_TBenchRecord321.Add('key', Default(TBenchRecord321));
  finally
    DS_TBenchRecord321.Free;
  end;
  DI_TBenchRecord321 := TDictionary<Integer, TBenchRecord321>.Create;
  try
    DI_TBenchRecord321.Add(1, Default(TBenchRecord321));
  finally
    DI_TBenchRecord321.Free;
  end;
  DG_TBenchRecord321 := TDictionary<TGUID, TBenchRecord321>.Create;
  try
    DG_TBenchRecord321.Add(TGUID.Empty, Default(TBenchRecord321));
  finally
    DG_TBenchRecord321.Free;
  end;
  DS_TBenchRecord322 := TDictionary<string, TBenchRecord322>.Create;
  try
    DS_TBenchRecord322.Add('key', Default(TBenchRecord322));
  finally
    DS_TBenchRecord322.Free;
  end;
  DI_TBenchRecord322 := TDictionary<Integer, TBenchRecord322>.Create;
  try
    DI_TBenchRecord322.Add(1, Default(TBenchRecord322));
  finally
    DI_TBenchRecord322.Free;
  end;
  DG_TBenchRecord322 := TDictionary<TGUID, TBenchRecord322>.Create;
  try
    DG_TBenchRecord322.Add(TGUID.Empty, Default(TBenchRecord322));
  finally
    DG_TBenchRecord322.Free;
  end;
  DS_TBenchRecord323 := TDictionary<string, TBenchRecord323>.Create;
  try
    DS_TBenchRecord323.Add('key', Default(TBenchRecord323));
  finally
    DS_TBenchRecord323.Free;
  end;
  DI_TBenchRecord323 := TDictionary<Integer, TBenchRecord323>.Create;
  try
    DI_TBenchRecord323.Add(1, Default(TBenchRecord323));
  finally
    DI_TBenchRecord323.Free;
  end;
  DG_TBenchRecord323 := TDictionary<TGUID, TBenchRecord323>.Create;
  try
    DG_TBenchRecord323.Add(TGUID.Empty, Default(TBenchRecord323));
  finally
    DG_TBenchRecord323.Free;
  end;
  DS_TBenchRecord324 := TDictionary<string, TBenchRecord324>.Create;
  try
    DS_TBenchRecord324.Add('key', Default(TBenchRecord324));
  finally
    DS_TBenchRecord324.Free;
  end;
  DI_TBenchRecord324 := TDictionary<Integer, TBenchRecord324>.Create;
  try
    DI_TBenchRecord324.Add(1, Default(TBenchRecord324));
  finally
    DI_TBenchRecord324.Free;
  end;
  DG_TBenchRecord324 := TDictionary<TGUID, TBenchRecord324>.Create;
  try
    DG_TBenchRecord324.Add(TGUID.Empty, Default(TBenchRecord324));
  finally
    DG_TBenchRecord324.Free;
  end;
  DS_TBenchRecord325 := TDictionary<string, TBenchRecord325>.Create;
  try
    DS_TBenchRecord325.Add('key', Default(TBenchRecord325));
  finally
    DS_TBenchRecord325.Free;
  end;
  DI_TBenchRecord325 := TDictionary<Integer, TBenchRecord325>.Create;
  try
    DI_TBenchRecord325.Add(1, Default(TBenchRecord325));
  finally
    DI_TBenchRecord325.Free;
  end;
  DG_TBenchRecord325 := TDictionary<TGUID, TBenchRecord325>.Create;
  try
    DG_TBenchRecord325.Add(TGUID.Empty, Default(TBenchRecord325));
  finally
    DG_TBenchRecord325.Free;
  end;
  DS_TBenchRecord326 := TDictionary<string, TBenchRecord326>.Create;
  try
    DS_TBenchRecord326.Add('key', Default(TBenchRecord326));
  finally
    DS_TBenchRecord326.Free;
  end;
  DI_TBenchRecord326 := TDictionary<Integer, TBenchRecord326>.Create;
  try
    DI_TBenchRecord326.Add(1, Default(TBenchRecord326));
  finally
    DI_TBenchRecord326.Free;
  end;
  DG_TBenchRecord326 := TDictionary<TGUID, TBenchRecord326>.Create;
  try
    DG_TBenchRecord326.Add(TGUID.Empty, Default(TBenchRecord326));
  finally
    DG_TBenchRecord326.Free;
  end;
  DS_TBenchRecord327 := TDictionary<string, TBenchRecord327>.Create;
  try
    DS_TBenchRecord327.Add('key', Default(TBenchRecord327));
  finally
    DS_TBenchRecord327.Free;
  end;
  DI_TBenchRecord327 := TDictionary<Integer, TBenchRecord327>.Create;
  try
    DI_TBenchRecord327.Add(1, Default(TBenchRecord327));
  finally
    DI_TBenchRecord327.Free;
  end;
  DG_TBenchRecord327 := TDictionary<TGUID, TBenchRecord327>.Create;
  try
    DG_TBenchRecord327.Add(TGUID.Empty, Default(TBenchRecord327));
  finally
    DG_TBenchRecord327.Free;
  end;
  DS_TBenchRecord328 := TDictionary<string, TBenchRecord328>.Create;
  try
    DS_TBenchRecord328.Add('key', Default(TBenchRecord328));
  finally
    DS_TBenchRecord328.Free;
  end;
  DI_TBenchRecord328 := TDictionary<Integer, TBenchRecord328>.Create;
  try
    DI_TBenchRecord328.Add(1, Default(TBenchRecord328));
  finally
    DI_TBenchRecord328.Free;
  end;
  DG_TBenchRecord328 := TDictionary<TGUID, TBenchRecord328>.Create;
  try
    DG_TBenchRecord328.Add(TGUID.Empty, Default(TBenchRecord328));
  finally
    DG_TBenchRecord328.Free;
  end;
  DS_TBenchRecord329 := TDictionary<string, TBenchRecord329>.Create;
  try
    DS_TBenchRecord329.Add('key', Default(TBenchRecord329));
  finally
    DS_TBenchRecord329.Free;
  end;
  DI_TBenchRecord329 := TDictionary<Integer, TBenchRecord329>.Create;
  try
    DI_TBenchRecord329.Add(1, Default(TBenchRecord329));
  finally
    DI_TBenchRecord329.Free;
  end;
  DG_TBenchRecord329 := TDictionary<TGUID, TBenchRecord329>.Create;
  try
    DG_TBenchRecord329.Add(TGUID.Empty, Default(TBenchRecord329));
  finally
    DG_TBenchRecord329.Free;
  end;
  DS_TBenchRecord330 := TDictionary<string, TBenchRecord330>.Create;
  try
    DS_TBenchRecord330.Add('key', Default(TBenchRecord330));
  finally
    DS_TBenchRecord330.Free;
  end;
  DI_TBenchRecord330 := TDictionary<Integer, TBenchRecord330>.Create;
  try
    DI_TBenchRecord330.Add(1, Default(TBenchRecord330));
  finally
    DI_TBenchRecord330.Free;
  end;
  DG_TBenchRecord330 := TDictionary<TGUID, TBenchRecord330>.Create;
  try
    DG_TBenchRecord330.Add(TGUID.Empty, Default(TBenchRecord330));
  finally
    DG_TBenchRecord330.Free;
  end;
  DS_TBenchRecord331 := TDictionary<string, TBenchRecord331>.Create;
  try
    DS_TBenchRecord331.Add('key', Default(TBenchRecord331));
  finally
    DS_TBenchRecord331.Free;
  end;
  DI_TBenchRecord331 := TDictionary<Integer, TBenchRecord331>.Create;
  try
    DI_TBenchRecord331.Add(1, Default(TBenchRecord331));
  finally
    DI_TBenchRecord331.Free;
  end;
  DG_TBenchRecord331 := TDictionary<TGUID, TBenchRecord331>.Create;
  try
    DG_TBenchRecord331.Add(TGUID.Empty, Default(TBenchRecord331));
  finally
    DG_TBenchRecord331.Free;
  end;
  DS_TBenchRecord332 := TDictionary<string, TBenchRecord332>.Create;
  try
    DS_TBenchRecord332.Add('key', Default(TBenchRecord332));
  finally
    DS_TBenchRecord332.Free;
  end;
  DI_TBenchRecord332 := TDictionary<Integer, TBenchRecord332>.Create;
  try
    DI_TBenchRecord332.Add(1, Default(TBenchRecord332));
  finally
    DI_TBenchRecord332.Free;
  end;
  DG_TBenchRecord332 := TDictionary<TGUID, TBenchRecord332>.Create;
  try
    DG_TBenchRecord332.Add(TGUID.Empty, Default(TBenchRecord332));
  finally
    DG_TBenchRecord332.Free;
  end;
  DS_TBenchRecord333 := TDictionary<string, TBenchRecord333>.Create;
  try
    DS_TBenchRecord333.Add('key', Default(TBenchRecord333));
  finally
    DS_TBenchRecord333.Free;
  end;
  DI_TBenchRecord333 := TDictionary<Integer, TBenchRecord333>.Create;
  try
    DI_TBenchRecord333.Add(1, Default(TBenchRecord333));
  finally
    DI_TBenchRecord333.Free;
  end;
  DG_TBenchRecord333 := TDictionary<TGUID, TBenchRecord333>.Create;
  try
    DG_TBenchRecord333.Add(TGUID.Empty, Default(TBenchRecord333));
  finally
    DG_TBenchRecord333.Free;
  end;
  DS_TBenchRecord334 := TDictionary<string, TBenchRecord334>.Create;
  try
    DS_TBenchRecord334.Add('key', Default(TBenchRecord334));
  finally
    DS_TBenchRecord334.Free;
  end;
  DI_TBenchRecord334 := TDictionary<Integer, TBenchRecord334>.Create;
  try
    DI_TBenchRecord334.Add(1, Default(TBenchRecord334));
  finally
    DI_TBenchRecord334.Free;
  end;
  DG_TBenchRecord334 := TDictionary<TGUID, TBenchRecord334>.Create;
  try
    DG_TBenchRecord334.Add(TGUID.Empty, Default(TBenchRecord334));
  finally
    DG_TBenchRecord334.Free;
  end;
  DS_TBenchRecord335 := TDictionary<string, TBenchRecord335>.Create;
  try
    DS_TBenchRecord335.Add('key', Default(TBenchRecord335));
  finally
    DS_TBenchRecord335.Free;
  end;
  DI_TBenchRecord335 := TDictionary<Integer, TBenchRecord335>.Create;
  try
    DI_TBenchRecord335.Add(1, Default(TBenchRecord335));
  finally
    DI_TBenchRecord335.Free;
  end;
  DG_TBenchRecord335 := TDictionary<TGUID, TBenchRecord335>.Create;
  try
    DG_TBenchRecord335.Add(TGUID.Empty, Default(TBenchRecord335));
  finally
    DG_TBenchRecord335.Free;
  end;
  DS_TBenchRecord336 := TDictionary<string, TBenchRecord336>.Create;
  try
    DS_TBenchRecord336.Add('key', Default(TBenchRecord336));
  finally
    DS_TBenchRecord336.Free;
  end;
  DI_TBenchRecord336 := TDictionary<Integer, TBenchRecord336>.Create;
  try
    DI_TBenchRecord336.Add(1, Default(TBenchRecord336));
  finally
    DI_TBenchRecord336.Free;
  end;
  DG_TBenchRecord336 := TDictionary<TGUID, TBenchRecord336>.Create;
  try
    DG_TBenchRecord336.Add(TGUID.Empty, Default(TBenchRecord336));
  finally
    DG_TBenchRecord336.Free;
  end;
  DS_TBenchRecord337 := TDictionary<string, TBenchRecord337>.Create;
  try
    DS_TBenchRecord337.Add('key', Default(TBenchRecord337));
  finally
    DS_TBenchRecord337.Free;
  end;
  DI_TBenchRecord337 := TDictionary<Integer, TBenchRecord337>.Create;
  try
    DI_TBenchRecord337.Add(1, Default(TBenchRecord337));
  finally
    DI_TBenchRecord337.Free;
  end;
  DG_TBenchRecord337 := TDictionary<TGUID, TBenchRecord337>.Create;
  try
    DG_TBenchRecord337.Add(TGUID.Empty, Default(TBenchRecord337));
  finally
    DG_TBenchRecord337.Free;
  end;
  DS_TBenchRecord338 := TDictionary<string, TBenchRecord338>.Create;
  try
    DS_TBenchRecord338.Add('key', Default(TBenchRecord338));
  finally
    DS_TBenchRecord338.Free;
  end;
  DI_TBenchRecord338 := TDictionary<Integer, TBenchRecord338>.Create;
  try
    DI_TBenchRecord338.Add(1, Default(TBenchRecord338));
  finally
    DI_TBenchRecord338.Free;
  end;
  DG_TBenchRecord338 := TDictionary<TGUID, TBenchRecord338>.Create;
  try
    DG_TBenchRecord338.Add(TGUID.Empty, Default(TBenchRecord338));
  finally
    DG_TBenchRecord338.Free;
  end;
  DS_TBenchRecord339 := TDictionary<string, TBenchRecord339>.Create;
  try
    DS_TBenchRecord339.Add('key', Default(TBenchRecord339));
  finally
    DS_TBenchRecord339.Free;
  end;
  DI_TBenchRecord339 := TDictionary<Integer, TBenchRecord339>.Create;
  try
    DI_TBenchRecord339.Add(1, Default(TBenchRecord339));
  finally
    DI_TBenchRecord339.Free;
  end;
  DG_TBenchRecord339 := TDictionary<TGUID, TBenchRecord339>.Create;
  try
    DG_TBenchRecord339.Add(TGUID.Empty, Default(TBenchRecord339));
  finally
    DG_TBenchRecord339.Free;
  end;
  DS_TBenchRecord340 := TDictionary<string, TBenchRecord340>.Create;
  try
    DS_TBenchRecord340.Add('key', Default(TBenchRecord340));
  finally
    DS_TBenchRecord340.Free;
  end;
  DI_TBenchRecord340 := TDictionary<Integer, TBenchRecord340>.Create;
  try
    DI_TBenchRecord340.Add(1, Default(TBenchRecord340));
  finally
    DI_TBenchRecord340.Free;
  end;
  DG_TBenchRecord340 := TDictionary<TGUID, TBenchRecord340>.Create;
  try
    DG_TBenchRecord340.Add(TGUID.Empty, Default(TBenchRecord340));
  finally
    DG_TBenchRecord340.Free;
  end;
  DS_TBenchRecord341 := TDictionary<string, TBenchRecord341>.Create;
  try
    DS_TBenchRecord341.Add('key', Default(TBenchRecord341));
  finally
    DS_TBenchRecord341.Free;
  end;
  DI_TBenchRecord341 := TDictionary<Integer, TBenchRecord341>.Create;
  try
    DI_TBenchRecord341.Add(1, Default(TBenchRecord341));
  finally
    DI_TBenchRecord341.Free;
  end;
  DG_TBenchRecord341 := TDictionary<TGUID, TBenchRecord341>.Create;
  try
    DG_TBenchRecord341.Add(TGUID.Empty, Default(TBenchRecord341));
  finally
    DG_TBenchRecord341.Free;
  end;
  DS_TBenchRecord342 := TDictionary<string, TBenchRecord342>.Create;
  try
    DS_TBenchRecord342.Add('key', Default(TBenchRecord342));
  finally
    DS_TBenchRecord342.Free;
  end;
  DI_TBenchRecord342 := TDictionary<Integer, TBenchRecord342>.Create;
  try
    DI_TBenchRecord342.Add(1, Default(TBenchRecord342));
  finally
    DI_TBenchRecord342.Free;
  end;
  DG_TBenchRecord342 := TDictionary<TGUID, TBenchRecord342>.Create;
  try
    DG_TBenchRecord342.Add(TGUID.Empty, Default(TBenchRecord342));
  finally
    DG_TBenchRecord342.Free;
  end;
  DS_TBenchRecord343 := TDictionary<string, TBenchRecord343>.Create;
  try
    DS_TBenchRecord343.Add('key', Default(TBenchRecord343));
  finally
    DS_TBenchRecord343.Free;
  end;
  DI_TBenchRecord343 := TDictionary<Integer, TBenchRecord343>.Create;
  try
    DI_TBenchRecord343.Add(1, Default(TBenchRecord343));
  finally
    DI_TBenchRecord343.Free;
  end;
  DG_TBenchRecord343 := TDictionary<TGUID, TBenchRecord343>.Create;
  try
    DG_TBenchRecord343.Add(TGUID.Empty, Default(TBenchRecord343));
  finally
    DG_TBenchRecord343.Free;
  end;
  DS_TBenchRecord344 := TDictionary<string, TBenchRecord344>.Create;
  try
    DS_TBenchRecord344.Add('key', Default(TBenchRecord344));
  finally
    DS_TBenchRecord344.Free;
  end;
  DI_TBenchRecord344 := TDictionary<Integer, TBenchRecord344>.Create;
  try
    DI_TBenchRecord344.Add(1, Default(TBenchRecord344));
  finally
    DI_TBenchRecord344.Free;
  end;
  DG_TBenchRecord344 := TDictionary<TGUID, TBenchRecord344>.Create;
  try
    DG_TBenchRecord344.Add(TGUID.Empty, Default(TBenchRecord344));
  finally
    DG_TBenchRecord344.Free;
  end;
  DS_TBenchRecord345 := TDictionary<string, TBenchRecord345>.Create;
  try
    DS_TBenchRecord345.Add('key', Default(TBenchRecord345));
  finally
    DS_TBenchRecord345.Free;
  end;
  DI_TBenchRecord345 := TDictionary<Integer, TBenchRecord345>.Create;
  try
    DI_TBenchRecord345.Add(1, Default(TBenchRecord345));
  finally
    DI_TBenchRecord345.Free;
  end;
  DG_TBenchRecord345 := TDictionary<TGUID, TBenchRecord345>.Create;
  try
    DG_TBenchRecord345.Add(TGUID.Empty, Default(TBenchRecord345));
  finally
    DG_TBenchRecord345.Free;
  end;
  DS_TBenchRecord346 := TDictionary<string, TBenchRecord346>.Create;
  try
    DS_TBenchRecord346.Add('key', Default(TBenchRecord346));
  finally
    DS_TBenchRecord346.Free;
  end;
  DI_TBenchRecord346 := TDictionary<Integer, TBenchRecord346>.Create;
  try
    DI_TBenchRecord346.Add(1, Default(TBenchRecord346));
  finally
    DI_TBenchRecord346.Free;
  end;
  DG_TBenchRecord346 := TDictionary<TGUID, TBenchRecord346>.Create;
  try
    DG_TBenchRecord346.Add(TGUID.Empty, Default(TBenchRecord346));
  finally
    DG_TBenchRecord346.Free;
  end;
  DS_TBenchRecord347 := TDictionary<string, TBenchRecord347>.Create;
  try
    DS_TBenchRecord347.Add('key', Default(TBenchRecord347));
  finally
    DS_TBenchRecord347.Free;
  end;
  DI_TBenchRecord347 := TDictionary<Integer, TBenchRecord347>.Create;
  try
    DI_TBenchRecord347.Add(1, Default(TBenchRecord347));
  finally
    DI_TBenchRecord347.Free;
  end;
  DG_TBenchRecord347 := TDictionary<TGUID, TBenchRecord347>.Create;
  try
    DG_TBenchRecord347.Add(TGUID.Empty, Default(TBenchRecord347));
  finally
    DG_TBenchRecord347.Free;
  end;
  DS_TBenchRecord348 := TDictionary<string, TBenchRecord348>.Create;
  try
    DS_TBenchRecord348.Add('key', Default(TBenchRecord348));
  finally
    DS_TBenchRecord348.Free;
  end;
  DI_TBenchRecord348 := TDictionary<Integer, TBenchRecord348>.Create;
  try
    DI_TBenchRecord348.Add(1, Default(TBenchRecord348));
  finally
    DI_TBenchRecord348.Free;
  end;
  DG_TBenchRecord348 := TDictionary<TGUID, TBenchRecord348>.Create;
  try
    DG_TBenchRecord348.Add(TGUID.Empty, Default(TBenchRecord348));
  finally
    DG_TBenchRecord348.Free;
  end;
  DS_TBenchRecord349 := TDictionary<string, TBenchRecord349>.Create;
  try
    DS_TBenchRecord349.Add('key', Default(TBenchRecord349));
  finally
    DS_TBenchRecord349.Free;
  end;
  DI_TBenchRecord349 := TDictionary<Integer, TBenchRecord349>.Create;
  try
    DI_TBenchRecord349.Add(1, Default(TBenchRecord349));
  finally
    DI_TBenchRecord349.Free;
  end;
  DG_TBenchRecord349 := TDictionary<TGUID, TBenchRecord349>.Create;
  try
    DG_TBenchRecord349.Add(TGUID.Empty, Default(TBenchRecord349));
  finally
    DG_TBenchRecord349.Free;
  end;
  DS_TBenchRecord350 := TDictionary<string, TBenchRecord350>.Create;
  try
    DS_TBenchRecord350.Add('key', Default(TBenchRecord350));
  finally
    DS_TBenchRecord350.Free;
  end;
  DI_TBenchRecord350 := TDictionary<Integer, TBenchRecord350>.Create;
  try
    DI_TBenchRecord350.Add(1, Default(TBenchRecord350));
  finally
    DI_TBenchRecord350.Free;
  end;
  DG_TBenchRecord350 := TDictionary<TGUID, TBenchRecord350>.Create;
  try
    DG_TBenchRecord350.Add(TGUID.Empty, Default(TBenchRecord350));
  finally
    DG_TBenchRecord350.Free;
  end;
  DS_TBenchRecord351 := TDictionary<string, TBenchRecord351>.Create;
  try
    DS_TBenchRecord351.Add('key', Default(TBenchRecord351));
  finally
    DS_TBenchRecord351.Free;
  end;
  DI_TBenchRecord351 := TDictionary<Integer, TBenchRecord351>.Create;
  try
    DI_TBenchRecord351.Add(1, Default(TBenchRecord351));
  finally
    DI_TBenchRecord351.Free;
  end;
  DG_TBenchRecord351 := TDictionary<TGUID, TBenchRecord351>.Create;
  try
    DG_TBenchRecord351.Add(TGUID.Empty, Default(TBenchRecord351));
  finally
    DG_TBenchRecord351.Free;
  end;
  DS_TBenchRecord352 := TDictionary<string, TBenchRecord352>.Create;
  try
    DS_TBenchRecord352.Add('key', Default(TBenchRecord352));
  finally
    DS_TBenchRecord352.Free;
  end;
  DI_TBenchRecord352 := TDictionary<Integer, TBenchRecord352>.Create;
  try
    DI_TBenchRecord352.Add(1, Default(TBenchRecord352));
  finally
    DI_TBenchRecord352.Free;
  end;
  DG_TBenchRecord352 := TDictionary<TGUID, TBenchRecord352>.Create;
  try
    DG_TBenchRecord352.Add(TGUID.Empty, Default(TBenchRecord352));
  finally
    DG_TBenchRecord352.Free;
  end;
  DS_TBenchRecord353 := TDictionary<string, TBenchRecord353>.Create;
  try
    DS_TBenchRecord353.Add('key', Default(TBenchRecord353));
  finally
    DS_TBenchRecord353.Free;
  end;
  DI_TBenchRecord353 := TDictionary<Integer, TBenchRecord353>.Create;
  try
    DI_TBenchRecord353.Add(1, Default(TBenchRecord353));
  finally
    DI_TBenchRecord353.Free;
  end;
  DG_TBenchRecord353 := TDictionary<TGUID, TBenchRecord353>.Create;
  try
    DG_TBenchRecord353.Add(TGUID.Empty, Default(TBenchRecord353));
  finally
    DG_TBenchRecord353.Free;
  end;
  DS_TBenchRecord354 := TDictionary<string, TBenchRecord354>.Create;
  try
    DS_TBenchRecord354.Add('key', Default(TBenchRecord354));
  finally
    DS_TBenchRecord354.Free;
  end;
  DI_TBenchRecord354 := TDictionary<Integer, TBenchRecord354>.Create;
  try
    DI_TBenchRecord354.Add(1, Default(TBenchRecord354));
  finally
    DI_TBenchRecord354.Free;
  end;
  DG_TBenchRecord354 := TDictionary<TGUID, TBenchRecord354>.Create;
  try
    DG_TBenchRecord354.Add(TGUID.Empty, Default(TBenchRecord354));
  finally
    DG_TBenchRecord354.Free;
  end;
  DS_TBenchRecord355 := TDictionary<string, TBenchRecord355>.Create;
  try
    DS_TBenchRecord355.Add('key', Default(TBenchRecord355));
  finally
    DS_TBenchRecord355.Free;
  end;
  DI_TBenchRecord355 := TDictionary<Integer, TBenchRecord355>.Create;
  try
    DI_TBenchRecord355.Add(1, Default(TBenchRecord355));
  finally
    DI_TBenchRecord355.Free;
  end;
  DG_TBenchRecord355 := TDictionary<TGUID, TBenchRecord355>.Create;
  try
    DG_TBenchRecord355.Add(TGUID.Empty, Default(TBenchRecord355));
  finally
    DG_TBenchRecord355.Free;
  end;
  DS_TBenchRecord356 := TDictionary<string, TBenchRecord356>.Create;
  try
    DS_TBenchRecord356.Add('key', Default(TBenchRecord356));
  finally
    DS_TBenchRecord356.Free;
  end;
  DI_TBenchRecord356 := TDictionary<Integer, TBenchRecord356>.Create;
  try
    DI_TBenchRecord356.Add(1, Default(TBenchRecord356));
  finally
    DI_TBenchRecord356.Free;
  end;
  DG_TBenchRecord356 := TDictionary<TGUID, TBenchRecord356>.Create;
  try
    DG_TBenchRecord356.Add(TGUID.Empty, Default(TBenchRecord356));
  finally
    DG_TBenchRecord356.Free;
  end;
  DS_TBenchRecord357 := TDictionary<string, TBenchRecord357>.Create;
  try
    DS_TBenchRecord357.Add('key', Default(TBenchRecord357));
  finally
    DS_TBenchRecord357.Free;
  end;
  DI_TBenchRecord357 := TDictionary<Integer, TBenchRecord357>.Create;
  try
    DI_TBenchRecord357.Add(1, Default(TBenchRecord357));
  finally
    DI_TBenchRecord357.Free;
  end;
  DG_TBenchRecord357 := TDictionary<TGUID, TBenchRecord357>.Create;
  try
    DG_TBenchRecord357.Add(TGUID.Empty, Default(TBenchRecord357));
  finally
    DG_TBenchRecord357.Free;
  end;
  DS_TBenchRecord358 := TDictionary<string, TBenchRecord358>.Create;
  try
    DS_TBenchRecord358.Add('key', Default(TBenchRecord358));
  finally
    DS_TBenchRecord358.Free;
  end;
  DI_TBenchRecord358 := TDictionary<Integer, TBenchRecord358>.Create;
  try
    DI_TBenchRecord358.Add(1, Default(TBenchRecord358));
  finally
    DI_TBenchRecord358.Free;
  end;
  DG_TBenchRecord358 := TDictionary<TGUID, TBenchRecord358>.Create;
  try
    DG_TBenchRecord358.Add(TGUID.Empty, Default(TBenchRecord358));
  finally
    DG_TBenchRecord358.Free;
  end;
  DS_TBenchRecord359 := TDictionary<string, TBenchRecord359>.Create;
  try
    DS_TBenchRecord359.Add('key', Default(TBenchRecord359));
  finally
    DS_TBenchRecord359.Free;
  end;
  DI_TBenchRecord359 := TDictionary<Integer, TBenchRecord359>.Create;
  try
    DI_TBenchRecord359.Add(1, Default(TBenchRecord359));
  finally
    DI_TBenchRecord359.Free;
  end;
  DG_TBenchRecord359 := TDictionary<TGUID, TBenchRecord359>.Create;
  try
    DG_TBenchRecord359.Add(TGUID.Empty, Default(TBenchRecord359));
  finally
    DG_TBenchRecord359.Free;
  end;
  DS_TBenchRecord360 := TDictionary<string, TBenchRecord360>.Create;
  try
    DS_TBenchRecord360.Add('key', Default(TBenchRecord360));
  finally
    DS_TBenchRecord360.Free;
  end;
  DI_TBenchRecord360 := TDictionary<Integer, TBenchRecord360>.Create;
  try
    DI_TBenchRecord360.Add(1, Default(TBenchRecord360));
  finally
    DI_TBenchRecord360.Free;
  end;
  DG_TBenchRecord360 := TDictionary<TGUID, TBenchRecord360>.Create;
  try
    DG_TBenchRecord360.Add(TGUID.Empty, Default(TBenchRecord360));
  finally
    DG_TBenchRecord360.Free;
  end;
  DS_TBenchRecord361 := TDictionary<string, TBenchRecord361>.Create;
  try
    DS_TBenchRecord361.Add('key', Default(TBenchRecord361));
  finally
    DS_TBenchRecord361.Free;
  end;
  DI_TBenchRecord361 := TDictionary<Integer, TBenchRecord361>.Create;
  try
    DI_TBenchRecord361.Add(1, Default(TBenchRecord361));
  finally
    DI_TBenchRecord361.Free;
  end;
  DG_TBenchRecord361 := TDictionary<TGUID, TBenchRecord361>.Create;
  try
    DG_TBenchRecord361.Add(TGUID.Empty, Default(TBenchRecord361));
  finally
    DG_TBenchRecord361.Free;
  end;
  DS_TBenchRecord362 := TDictionary<string, TBenchRecord362>.Create;
  try
    DS_TBenchRecord362.Add('key', Default(TBenchRecord362));
  finally
    DS_TBenchRecord362.Free;
  end;
  DI_TBenchRecord362 := TDictionary<Integer, TBenchRecord362>.Create;
  try
    DI_TBenchRecord362.Add(1, Default(TBenchRecord362));
  finally
    DI_TBenchRecord362.Free;
  end;
  DG_TBenchRecord362 := TDictionary<TGUID, TBenchRecord362>.Create;
  try
    DG_TBenchRecord362.Add(TGUID.Empty, Default(TBenchRecord362));
  finally
    DG_TBenchRecord362.Free;
  end;
  DS_TBenchRecord363 := TDictionary<string, TBenchRecord363>.Create;
  try
    DS_TBenchRecord363.Add('key', Default(TBenchRecord363));
  finally
    DS_TBenchRecord363.Free;
  end;
  DI_TBenchRecord363 := TDictionary<Integer, TBenchRecord363>.Create;
  try
    DI_TBenchRecord363.Add(1, Default(TBenchRecord363));
  finally
    DI_TBenchRecord363.Free;
  end;
  DG_TBenchRecord363 := TDictionary<TGUID, TBenchRecord363>.Create;
  try
    DG_TBenchRecord363.Add(TGUID.Empty, Default(TBenchRecord363));
  finally
    DG_TBenchRecord363.Free;
  end;
  DS_TBenchRecord364 := TDictionary<string, TBenchRecord364>.Create;
  try
    DS_TBenchRecord364.Add('key', Default(TBenchRecord364));
  finally
    DS_TBenchRecord364.Free;
  end;
  DI_TBenchRecord364 := TDictionary<Integer, TBenchRecord364>.Create;
  try
    DI_TBenchRecord364.Add(1, Default(TBenchRecord364));
  finally
    DI_TBenchRecord364.Free;
  end;
  DG_TBenchRecord364 := TDictionary<TGUID, TBenchRecord364>.Create;
  try
    DG_TBenchRecord364.Add(TGUID.Empty, Default(TBenchRecord364));
  finally
    DG_TBenchRecord364.Free;
  end;
  DS_TBenchRecord365 := TDictionary<string, TBenchRecord365>.Create;
  try
    DS_TBenchRecord365.Add('key', Default(TBenchRecord365));
  finally
    DS_TBenchRecord365.Free;
  end;
  DI_TBenchRecord365 := TDictionary<Integer, TBenchRecord365>.Create;
  try
    DI_TBenchRecord365.Add(1, Default(TBenchRecord365));
  finally
    DI_TBenchRecord365.Free;
  end;
  DG_TBenchRecord365 := TDictionary<TGUID, TBenchRecord365>.Create;
  try
    DG_TBenchRecord365.Add(TGUID.Empty, Default(TBenchRecord365));
  finally
    DG_TBenchRecord365.Free;
  end;
  DS_TBenchRecord366 := TDictionary<string, TBenchRecord366>.Create;
  try
    DS_TBenchRecord366.Add('key', Default(TBenchRecord366));
  finally
    DS_TBenchRecord366.Free;
  end;
  DI_TBenchRecord366 := TDictionary<Integer, TBenchRecord366>.Create;
  try
    DI_TBenchRecord366.Add(1, Default(TBenchRecord366));
  finally
    DI_TBenchRecord366.Free;
  end;
  DG_TBenchRecord366 := TDictionary<TGUID, TBenchRecord366>.Create;
  try
    DG_TBenchRecord366.Add(TGUID.Empty, Default(TBenchRecord366));
  finally
    DG_TBenchRecord366.Free;
  end;
  DS_TBenchRecord367 := TDictionary<string, TBenchRecord367>.Create;
  try
    DS_TBenchRecord367.Add('key', Default(TBenchRecord367));
  finally
    DS_TBenchRecord367.Free;
  end;
  DI_TBenchRecord367 := TDictionary<Integer, TBenchRecord367>.Create;
  try
    DI_TBenchRecord367.Add(1, Default(TBenchRecord367));
  finally
    DI_TBenchRecord367.Free;
  end;
  DG_TBenchRecord367 := TDictionary<TGUID, TBenchRecord367>.Create;
  try
    DG_TBenchRecord367.Add(TGUID.Empty, Default(TBenchRecord367));
  finally
    DG_TBenchRecord367.Free;
  end;
  DS_TBenchRecord368 := TDictionary<string, TBenchRecord368>.Create;
  try
    DS_TBenchRecord368.Add('key', Default(TBenchRecord368));
  finally
    DS_TBenchRecord368.Free;
  end;
  DI_TBenchRecord368 := TDictionary<Integer, TBenchRecord368>.Create;
  try
    DI_TBenchRecord368.Add(1, Default(TBenchRecord368));
  finally
    DI_TBenchRecord368.Free;
  end;
  DG_TBenchRecord368 := TDictionary<TGUID, TBenchRecord368>.Create;
  try
    DG_TBenchRecord368.Add(TGUID.Empty, Default(TBenchRecord368));
  finally
    DG_TBenchRecord368.Free;
  end;
  DS_TBenchRecord369 := TDictionary<string, TBenchRecord369>.Create;
  try
    DS_TBenchRecord369.Add('key', Default(TBenchRecord369));
  finally
    DS_TBenchRecord369.Free;
  end;
  DI_TBenchRecord369 := TDictionary<Integer, TBenchRecord369>.Create;
  try
    DI_TBenchRecord369.Add(1, Default(TBenchRecord369));
  finally
    DI_TBenchRecord369.Free;
  end;
  DG_TBenchRecord369 := TDictionary<TGUID, TBenchRecord369>.Create;
  try
    DG_TBenchRecord369.Add(TGUID.Empty, Default(TBenchRecord369));
  finally
    DG_TBenchRecord369.Free;
  end;
  DS_TBenchRecord370 := TDictionary<string, TBenchRecord370>.Create;
  try
    DS_TBenchRecord370.Add('key', Default(TBenchRecord370));
  finally
    DS_TBenchRecord370.Free;
  end;
  DI_TBenchRecord370 := TDictionary<Integer, TBenchRecord370>.Create;
  try
    DI_TBenchRecord370.Add(1, Default(TBenchRecord370));
  finally
    DI_TBenchRecord370.Free;
  end;
  DG_TBenchRecord370 := TDictionary<TGUID, TBenchRecord370>.Create;
  try
    DG_TBenchRecord370.Add(TGUID.Empty, Default(TBenchRecord370));
  finally
    DG_TBenchRecord370.Free;
  end;
  DS_TBenchRecord371 := TDictionary<string, TBenchRecord371>.Create;
  try
    DS_TBenchRecord371.Add('key', Default(TBenchRecord371));
  finally
    DS_TBenchRecord371.Free;
  end;
  DI_TBenchRecord371 := TDictionary<Integer, TBenchRecord371>.Create;
  try
    DI_TBenchRecord371.Add(1, Default(TBenchRecord371));
  finally
    DI_TBenchRecord371.Free;
  end;
  DG_TBenchRecord371 := TDictionary<TGUID, TBenchRecord371>.Create;
  try
    DG_TBenchRecord371.Add(TGUID.Empty, Default(TBenchRecord371));
  finally
    DG_TBenchRecord371.Free;
  end;
  DS_TBenchRecord372 := TDictionary<string, TBenchRecord372>.Create;
  try
    DS_TBenchRecord372.Add('key', Default(TBenchRecord372));
  finally
    DS_TBenchRecord372.Free;
  end;
  DI_TBenchRecord372 := TDictionary<Integer, TBenchRecord372>.Create;
  try
    DI_TBenchRecord372.Add(1, Default(TBenchRecord372));
  finally
    DI_TBenchRecord372.Free;
  end;
  DG_TBenchRecord372 := TDictionary<TGUID, TBenchRecord372>.Create;
  try
    DG_TBenchRecord372.Add(TGUID.Empty, Default(TBenchRecord372));
  finally
    DG_TBenchRecord372.Free;
  end;
  DS_TBenchRecord373 := TDictionary<string, TBenchRecord373>.Create;
  try
    DS_TBenchRecord373.Add('key', Default(TBenchRecord373));
  finally
    DS_TBenchRecord373.Free;
  end;
  DI_TBenchRecord373 := TDictionary<Integer, TBenchRecord373>.Create;
  try
    DI_TBenchRecord373.Add(1, Default(TBenchRecord373));
  finally
    DI_TBenchRecord373.Free;
  end;
  DG_TBenchRecord373 := TDictionary<TGUID, TBenchRecord373>.Create;
  try
    DG_TBenchRecord373.Add(TGUID.Empty, Default(TBenchRecord373));
  finally
    DG_TBenchRecord373.Free;
  end;
  DS_TBenchRecord374 := TDictionary<string, TBenchRecord374>.Create;
  try
    DS_TBenchRecord374.Add('key', Default(TBenchRecord374));
  finally
    DS_TBenchRecord374.Free;
  end;
  DI_TBenchRecord374 := TDictionary<Integer, TBenchRecord374>.Create;
  try
    DI_TBenchRecord374.Add(1, Default(TBenchRecord374));
  finally
    DI_TBenchRecord374.Free;
  end;
  DG_TBenchRecord374 := TDictionary<TGUID, TBenchRecord374>.Create;
  try
    DG_TBenchRecord374.Add(TGUID.Empty, Default(TBenchRecord374));
  finally
    DG_TBenchRecord374.Free;
  end;
  DS_TBenchRecord375 := TDictionary<string, TBenchRecord375>.Create;
  try
    DS_TBenchRecord375.Add('key', Default(TBenchRecord375));
  finally
    DS_TBenchRecord375.Free;
  end;
  DI_TBenchRecord375 := TDictionary<Integer, TBenchRecord375>.Create;
  try
    DI_TBenchRecord375.Add(1, Default(TBenchRecord375));
  finally
    DI_TBenchRecord375.Free;
  end;
  DG_TBenchRecord375 := TDictionary<TGUID, TBenchRecord375>.Create;
  try
    DG_TBenchRecord375.Add(TGUID.Empty, Default(TBenchRecord375));
  finally
    DG_TBenchRecord375.Free;
  end;
  DS_TBenchRecord376 := TDictionary<string, TBenchRecord376>.Create;
  try
    DS_TBenchRecord376.Add('key', Default(TBenchRecord376));
  finally
    DS_TBenchRecord376.Free;
  end;
  DI_TBenchRecord376 := TDictionary<Integer, TBenchRecord376>.Create;
  try
    DI_TBenchRecord376.Add(1, Default(TBenchRecord376));
  finally
    DI_TBenchRecord376.Free;
  end;
  DG_TBenchRecord376 := TDictionary<TGUID, TBenchRecord376>.Create;
  try
    DG_TBenchRecord376.Add(TGUID.Empty, Default(TBenchRecord376));
  finally
    DG_TBenchRecord376.Free;
  end;
  DS_TBenchRecord377 := TDictionary<string, TBenchRecord377>.Create;
  try
    DS_TBenchRecord377.Add('key', Default(TBenchRecord377));
  finally
    DS_TBenchRecord377.Free;
  end;
  DI_TBenchRecord377 := TDictionary<Integer, TBenchRecord377>.Create;
  try
    DI_TBenchRecord377.Add(1, Default(TBenchRecord377));
  finally
    DI_TBenchRecord377.Free;
  end;
  DG_TBenchRecord377 := TDictionary<TGUID, TBenchRecord377>.Create;
  try
    DG_TBenchRecord377.Add(TGUID.Empty, Default(TBenchRecord377));
  finally
    DG_TBenchRecord377.Free;
  end;
  DS_TBenchRecord378 := TDictionary<string, TBenchRecord378>.Create;
  try
    DS_TBenchRecord378.Add('key', Default(TBenchRecord378));
  finally
    DS_TBenchRecord378.Free;
  end;
  DI_TBenchRecord378 := TDictionary<Integer, TBenchRecord378>.Create;
  try
    DI_TBenchRecord378.Add(1, Default(TBenchRecord378));
  finally
    DI_TBenchRecord378.Free;
  end;
  DG_TBenchRecord378 := TDictionary<TGUID, TBenchRecord378>.Create;
  try
    DG_TBenchRecord378.Add(TGUID.Empty, Default(TBenchRecord378));
  finally
    DG_TBenchRecord378.Free;
  end;
  DS_TBenchRecord379 := TDictionary<string, TBenchRecord379>.Create;
  try
    DS_TBenchRecord379.Add('key', Default(TBenchRecord379));
  finally
    DS_TBenchRecord379.Free;
  end;
  DI_TBenchRecord379 := TDictionary<Integer, TBenchRecord379>.Create;
  try
    DI_TBenchRecord379.Add(1, Default(TBenchRecord379));
  finally
    DI_TBenchRecord379.Free;
  end;
  DG_TBenchRecord379 := TDictionary<TGUID, TBenchRecord379>.Create;
  try
    DG_TBenchRecord379.Add(TGUID.Empty, Default(TBenchRecord379));
  finally
    DG_TBenchRecord379.Free;
  end;
  DS_TBenchRecord380 := TDictionary<string, TBenchRecord380>.Create;
  try
    DS_TBenchRecord380.Add('key', Default(TBenchRecord380));
  finally
    DS_TBenchRecord380.Free;
  end;
  DI_TBenchRecord380 := TDictionary<Integer, TBenchRecord380>.Create;
  try
    DI_TBenchRecord380.Add(1, Default(TBenchRecord380));
  finally
    DI_TBenchRecord380.Free;
  end;
  DG_TBenchRecord380 := TDictionary<TGUID, TBenchRecord380>.Create;
  try
    DG_TBenchRecord380.Add(TGUID.Empty, Default(TBenchRecord380));
  finally
    DG_TBenchRecord380.Free;
  end;
  DS_TBenchRecord381 := TDictionary<string, TBenchRecord381>.Create;
  try
    DS_TBenchRecord381.Add('key', Default(TBenchRecord381));
  finally
    DS_TBenchRecord381.Free;
  end;
  DI_TBenchRecord381 := TDictionary<Integer, TBenchRecord381>.Create;
  try
    DI_TBenchRecord381.Add(1, Default(TBenchRecord381));
  finally
    DI_TBenchRecord381.Free;
  end;
  DG_TBenchRecord381 := TDictionary<TGUID, TBenchRecord381>.Create;
  try
    DG_TBenchRecord381.Add(TGUID.Empty, Default(TBenchRecord381));
  finally
    DG_TBenchRecord381.Free;
  end;
  DS_TBenchRecord382 := TDictionary<string, TBenchRecord382>.Create;
  try
    DS_TBenchRecord382.Add('key', Default(TBenchRecord382));
  finally
    DS_TBenchRecord382.Free;
  end;
  DI_TBenchRecord382 := TDictionary<Integer, TBenchRecord382>.Create;
  try
    DI_TBenchRecord382.Add(1, Default(TBenchRecord382));
  finally
    DI_TBenchRecord382.Free;
  end;
  DG_TBenchRecord382 := TDictionary<TGUID, TBenchRecord382>.Create;
  try
    DG_TBenchRecord382.Add(TGUID.Empty, Default(TBenchRecord382));
  finally
    DG_TBenchRecord382.Free;
  end;
  DS_TBenchRecord383 := TDictionary<string, TBenchRecord383>.Create;
  try
    DS_TBenchRecord383.Add('key', Default(TBenchRecord383));
  finally
    DS_TBenchRecord383.Free;
  end;
  DI_TBenchRecord383 := TDictionary<Integer, TBenchRecord383>.Create;
  try
    DI_TBenchRecord383.Add(1, Default(TBenchRecord383));
  finally
    DI_TBenchRecord383.Free;
  end;
  DG_TBenchRecord383 := TDictionary<TGUID, TBenchRecord383>.Create;
  try
    DG_TBenchRecord383.Add(TGUID.Empty, Default(TBenchRecord383));
  finally
    DG_TBenchRecord383.Free;
  end;
  DS_TBenchRecord384 := TDictionary<string, TBenchRecord384>.Create;
  try
    DS_TBenchRecord384.Add('key', Default(TBenchRecord384));
  finally
    DS_TBenchRecord384.Free;
  end;
  DI_TBenchRecord384 := TDictionary<Integer, TBenchRecord384>.Create;
  try
    DI_TBenchRecord384.Add(1, Default(TBenchRecord384));
  finally
    DI_TBenchRecord384.Free;
  end;
  DG_TBenchRecord384 := TDictionary<TGUID, TBenchRecord384>.Create;
  try
    DG_TBenchRecord384.Add(TGUID.Empty, Default(TBenchRecord384));
  finally
    DG_TBenchRecord384.Free;
  end;
  DS_TBenchRecord385 := TDictionary<string, TBenchRecord385>.Create;
  try
    DS_TBenchRecord385.Add('key', Default(TBenchRecord385));
  finally
    DS_TBenchRecord385.Free;
  end;
  DI_TBenchRecord385 := TDictionary<Integer, TBenchRecord385>.Create;
  try
    DI_TBenchRecord385.Add(1, Default(TBenchRecord385));
  finally
    DI_TBenchRecord385.Free;
  end;
  DG_TBenchRecord385 := TDictionary<TGUID, TBenchRecord385>.Create;
  try
    DG_TBenchRecord385.Add(TGUID.Empty, Default(TBenchRecord385));
  finally
    DG_TBenchRecord385.Free;
  end;
  DS_TBenchRecord386 := TDictionary<string, TBenchRecord386>.Create;
  try
    DS_TBenchRecord386.Add('key', Default(TBenchRecord386));
  finally
    DS_TBenchRecord386.Free;
  end;
  DI_TBenchRecord386 := TDictionary<Integer, TBenchRecord386>.Create;
  try
    DI_TBenchRecord386.Add(1, Default(TBenchRecord386));
  finally
    DI_TBenchRecord386.Free;
  end;
  DG_TBenchRecord386 := TDictionary<TGUID, TBenchRecord386>.Create;
  try
    DG_TBenchRecord386.Add(TGUID.Empty, Default(TBenchRecord386));
  finally
    DG_TBenchRecord386.Free;
  end;
  DS_TBenchRecord387 := TDictionary<string, TBenchRecord387>.Create;
  try
    DS_TBenchRecord387.Add('key', Default(TBenchRecord387));
  finally
    DS_TBenchRecord387.Free;
  end;
  DI_TBenchRecord387 := TDictionary<Integer, TBenchRecord387>.Create;
  try
    DI_TBenchRecord387.Add(1, Default(TBenchRecord387));
  finally
    DI_TBenchRecord387.Free;
  end;
  DG_TBenchRecord387 := TDictionary<TGUID, TBenchRecord387>.Create;
  try
    DG_TBenchRecord387.Add(TGUID.Empty, Default(TBenchRecord387));
  finally
    DG_TBenchRecord387.Free;
  end;
  DS_TBenchRecord388 := TDictionary<string, TBenchRecord388>.Create;
  try
    DS_TBenchRecord388.Add('key', Default(TBenchRecord388));
  finally
    DS_TBenchRecord388.Free;
  end;
  DI_TBenchRecord388 := TDictionary<Integer, TBenchRecord388>.Create;
  try
    DI_TBenchRecord388.Add(1, Default(TBenchRecord388));
  finally
    DI_TBenchRecord388.Free;
  end;
  DG_TBenchRecord388 := TDictionary<TGUID, TBenchRecord388>.Create;
  try
    DG_TBenchRecord388.Add(TGUID.Empty, Default(TBenchRecord388));
  finally
    DG_TBenchRecord388.Free;
  end;
  DS_TBenchRecord389 := TDictionary<string, TBenchRecord389>.Create;
  try
    DS_TBenchRecord389.Add('key', Default(TBenchRecord389));
  finally
    DS_TBenchRecord389.Free;
  end;
  DI_TBenchRecord389 := TDictionary<Integer, TBenchRecord389>.Create;
  try
    DI_TBenchRecord389.Add(1, Default(TBenchRecord389));
  finally
    DI_TBenchRecord389.Free;
  end;
  DG_TBenchRecord389 := TDictionary<TGUID, TBenchRecord389>.Create;
  try
    DG_TBenchRecord389.Add(TGUID.Empty, Default(TBenchRecord389));
  finally
    DG_TBenchRecord389.Free;
  end;
  DS_TBenchRecord390 := TDictionary<string, TBenchRecord390>.Create;
  try
    DS_TBenchRecord390.Add('key', Default(TBenchRecord390));
  finally
    DS_TBenchRecord390.Free;
  end;
  DI_TBenchRecord390 := TDictionary<Integer, TBenchRecord390>.Create;
  try
    DI_TBenchRecord390.Add(1, Default(TBenchRecord390));
  finally
    DI_TBenchRecord390.Free;
  end;
  DG_TBenchRecord390 := TDictionary<TGUID, TBenchRecord390>.Create;
  try
    DG_TBenchRecord390.Add(TGUID.Empty, Default(TBenchRecord390));
  finally
    DG_TBenchRecord390.Free;
  end;
  DS_TBenchRecord391 := TDictionary<string, TBenchRecord391>.Create;
  try
    DS_TBenchRecord391.Add('key', Default(TBenchRecord391));
  finally
    DS_TBenchRecord391.Free;
  end;
  DI_TBenchRecord391 := TDictionary<Integer, TBenchRecord391>.Create;
  try
    DI_TBenchRecord391.Add(1, Default(TBenchRecord391));
  finally
    DI_TBenchRecord391.Free;
  end;
  DG_TBenchRecord391 := TDictionary<TGUID, TBenchRecord391>.Create;
  try
    DG_TBenchRecord391.Add(TGUID.Empty, Default(TBenchRecord391));
  finally
    DG_TBenchRecord391.Free;
  end;
  DS_TBenchRecord392 := TDictionary<string, TBenchRecord392>.Create;
  try
    DS_TBenchRecord392.Add('key', Default(TBenchRecord392));
  finally
    DS_TBenchRecord392.Free;
  end;
  DI_TBenchRecord392 := TDictionary<Integer, TBenchRecord392>.Create;
  try
    DI_TBenchRecord392.Add(1, Default(TBenchRecord392));
  finally
    DI_TBenchRecord392.Free;
  end;
  DG_TBenchRecord392 := TDictionary<TGUID, TBenchRecord392>.Create;
  try
    DG_TBenchRecord392.Add(TGUID.Empty, Default(TBenchRecord392));
  finally
    DG_TBenchRecord392.Free;
  end;
  DS_TBenchRecord393 := TDictionary<string, TBenchRecord393>.Create;
  try
    DS_TBenchRecord393.Add('key', Default(TBenchRecord393));
  finally
    DS_TBenchRecord393.Free;
  end;
  DI_TBenchRecord393 := TDictionary<Integer, TBenchRecord393>.Create;
  try
    DI_TBenchRecord393.Add(1, Default(TBenchRecord393));
  finally
    DI_TBenchRecord393.Free;
  end;
  DG_TBenchRecord393 := TDictionary<TGUID, TBenchRecord393>.Create;
  try
    DG_TBenchRecord393.Add(TGUID.Empty, Default(TBenchRecord393));
  finally
    DG_TBenchRecord393.Free;
  end;
  DS_TBenchRecord394 := TDictionary<string, TBenchRecord394>.Create;
  try
    DS_TBenchRecord394.Add('key', Default(TBenchRecord394));
  finally
    DS_TBenchRecord394.Free;
  end;
  DI_TBenchRecord394 := TDictionary<Integer, TBenchRecord394>.Create;
  try
    DI_TBenchRecord394.Add(1, Default(TBenchRecord394));
  finally
    DI_TBenchRecord394.Free;
  end;
  DG_TBenchRecord394 := TDictionary<TGUID, TBenchRecord394>.Create;
  try
    DG_TBenchRecord394.Add(TGUID.Empty, Default(TBenchRecord394));
  finally
    DG_TBenchRecord394.Free;
  end;
  DS_TBenchRecord395 := TDictionary<string, TBenchRecord395>.Create;
  try
    DS_TBenchRecord395.Add('key', Default(TBenchRecord395));
  finally
    DS_TBenchRecord395.Free;
  end;
  DI_TBenchRecord395 := TDictionary<Integer, TBenchRecord395>.Create;
  try
    DI_TBenchRecord395.Add(1, Default(TBenchRecord395));
  finally
    DI_TBenchRecord395.Free;
  end;
  DG_TBenchRecord395 := TDictionary<TGUID, TBenchRecord395>.Create;
  try
    DG_TBenchRecord395.Add(TGUID.Empty, Default(TBenchRecord395));
  finally
    DG_TBenchRecord395.Free;
  end;
  DS_TBenchRecord396 := TDictionary<string, TBenchRecord396>.Create;
  try
    DS_TBenchRecord396.Add('key', Default(TBenchRecord396));
  finally
    DS_TBenchRecord396.Free;
  end;
  DI_TBenchRecord396 := TDictionary<Integer, TBenchRecord396>.Create;
  try
    DI_TBenchRecord396.Add(1, Default(TBenchRecord396));
  finally
    DI_TBenchRecord396.Free;
  end;
  DG_TBenchRecord396 := TDictionary<TGUID, TBenchRecord396>.Create;
  try
    DG_TBenchRecord396.Add(TGUID.Empty, Default(TBenchRecord396));
  finally
    DG_TBenchRecord396.Free;
  end;
  DS_TBenchRecord397 := TDictionary<string, TBenchRecord397>.Create;
  try
    DS_TBenchRecord397.Add('key', Default(TBenchRecord397));
  finally
    DS_TBenchRecord397.Free;
  end;
  DI_TBenchRecord397 := TDictionary<Integer, TBenchRecord397>.Create;
  try
    DI_TBenchRecord397.Add(1, Default(TBenchRecord397));
  finally
    DI_TBenchRecord397.Free;
  end;
  DG_TBenchRecord397 := TDictionary<TGUID, TBenchRecord397>.Create;
  try
    DG_TBenchRecord397.Add(TGUID.Empty, Default(TBenchRecord397));
  finally
    DG_TBenchRecord397.Free;
  end;
  DS_TBenchRecord398 := TDictionary<string, TBenchRecord398>.Create;
  try
    DS_TBenchRecord398.Add('key', Default(TBenchRecord398));
  finally
    DS_TBenchRecord398.Free;
  end;
  DI_TBenchRecord398 := TDictionary<Integer, TBenchRecord398>.Create;
  try
    DI_TBenchRecord398.Add(1, Default(TBenchRecord398));
  finally
    DI_TBenchRecord398.Free;
  end;
  DG_TBenchRecord398 := TDictionary<TGUID, TBenchRecord398>.Create;
  try
    DG_TBenchRecord398.Add(TGUID.Empty, Default(TBenchRecord398));
  finally
    DG_TBenchRecord398.Free;
  end;
  DS_TBenchRecord399 := TDictionary<string, TBenchRecord399>.Create;
  try
    DS_TBenchRecord399.Add('key', Default(TBenchRecord399));
  finally
    DS_TBenchRecord399.Free;
  end;
  DI_TBenchRecord399 := TDictionary<Integer, TBenchRecord399>.Create;
  try
    DI_TBenchRecord399.Add(1, Default(TBenchRecord399));
  finally
    DI_TBenchRecord399.Free;
  end;
  DG_TBenchRecord399 := TDictionary<TGUID, TBenchRecord399>.Create;
  try
    DG_TBenchRecord399.Add(TGUID.Empty, Default(TBenchRecord399));
  finally
    DG_TBenchRecord399.Free;
  end;
  DS_TBenchRecord400 := TDictionary<string, TBenchRecord400>.Create;
  try
    DS_TBenchRecord400.Add('key', Default(TBenchRecord400));
  finally
    DS_TBenchRecord400.Free;
  end;
  DI_TBenchRecord400 := TDictionary<Integer, TBenchRecord400>.Create;
  try
    DI_TBenchRecord400.Add(1, Default(TBenchRecord400));
  finally
    DI_TBenchRecord400.Free;
  end;
  DG_TBenchRecord400 := TDictionary<TGUID, TBenchRecord400>.Create;
  try
    DG_TBenchRecord400.Add(TGUID.Empty, Default(TBenchRecord400));
  finally
    DG_TBenchRecord400.Free;
  end;
  DS_TBenchRecord401 := TDictionary<string, TBenchRecord401>.Create;
  try
    DS_TBenchRecord401.Add('key', Default(TBenchRecord401));
  finally
    DS_TBenchRecord401.Free;
  end;
  DI_TBenchRecord401 := TDictionary<Integer, TBenchRecord401>.Create;
  try
    DI_TBenchRecord401.Add(1, Default(TBenchRecord401));
  finally
    DI_TBenchRecord401.Free;
  end;
  DG_TBenchRecord401 := TDictionary<TGUID, TBenchRecord401>.Create;
  try
    DG_TBenchRecord401.Add(TGUID.Empty, Default(TBenchRecord401));
  finally
    DG_TBenchRecord401.Free;
  end;
  DS_TBenchRecord402 := TDictionary<string, TBenchRecord402>.Create;
  try
    DS_TBenchRecord402.Add('key', Default(TBenchRecord402));
  finally
    DS_TBenchRecord402.Free;
  end;
  DI_TBenchRecord402 := TDictionary<Integer, TBenchRecord402>.Create;
  try
    DI_TBenchRecord402.Add(1, Default(TBenchRecord402));
  finally
    DI_TBenchRecord402.Free;
  end;
  DG_TBenchRecord402 := TDictionary<TGUID, TBenchRecord402>.Create;
  try
    DG_TBenchRecord402.Add(TGUID.Empty, Default(TBenchRecord402));
  finally
    DG_TBenchRecord402.Free;
  end;
  DS_TBenchRecord403 := TDictionary<string, TBenchRecord403>.Create;
  try
    DS_TBenchRecord403.Add('key', Default(TBenchRecord403));
  finally
    DS_TBenchRecord403.Free;
  end;
  DI_TBenchRecord403 := TDictionary<Integer, TBenchRecord403>.Create;
  try
    DI_TBenchRecord403.Add(1, Default(TBenchRecord403));
  finally
    DI_TBenchRecord403.Free;
  end;
  DG_TBenchRecord403 := TDictionary<TGUID, TBenchRecord403>.Create;
  try
    DG_TBenchRecord403.Add(TGUID.Empty, Default(TBenchRecord403));
  finally
    DG_TBenchRecord403.Free;
  end;
  DS_TBenchRecord404 := TDictionary<string, TBenchRecord404>.Create;
  try
    DS_TBenchRecord404.Add('key', Default(TBenchRecord404));
  finally
    DS_TBenchRecord404.Free;
  end;
  DI_TBenchRecord404 := TDictionary<Integer, TBenchRecord404>.Create;
  try
    DI_TBenchRecord404.Add(1, Default(TBenchRecord404));
  finally
    DI_TBenchRecord404.Free;
  end;
  DG_TBenchRecord404 := TDictionary<TGUID, TBenchRecord404>.Create;
  try
    DG_TBenchRecord404.Add(TGUID.Empty, Default(TBenchRecord404));
  finally
    DG_TBenchRecord404.Free;
  end;
  DS_TBenchRecord405 := TDictionary<string, TBenchRecord405>.Create;
  try
    DS_TBenchRecord405.Add('key', Default(TBenchRecord405));
  finally
    DS_TBenchRecord405.Free;
  end;
  DI_TBenchRecord405 := TDictionary<Integer, TBenchRecord405>.Create;
  try
    DI_TBenchRecord405.Add(1, Default(TBenchRecord405));
  finally
    DI_TBenchRecord405.Free;
  end;
  DG_TBenchRecord405 := TDictionary<TGUID, TBenchRecord405>.Create;
  try
    DG_TBenchRecord405.Add(TGUID.Empty, Default(TBenchRecord405));
  finally
    DG_TBenchRecord405.Free;
  end;
  DS_TBenchRecord406 := TDictionary<string, TBenchRecord406>.Create;
  try
    DS_TBenchRecord406.Add('key', Default(TBenchRecord406));
  finally
    DS_TBenchRecord406.Free;
  end;
  DI_TBenchRecord406 := TDictionary<Integer, TBenchRecord406>.Create;
  try
    DI_TBenchRecord406.Add(1, Default(TBenchRecord406));
  finally
    DI_TBenchRecord406.Free;
  end;
  DG_TBenchRecord406 := TDictionary<TGUID, TBenchRecord406>.Create;
  try
    DG_TBenchRecord406.Add(TGUID.Empty, Default(TBenchRecord406));
  finally
    DG_TBenchRecord406.Free;
  end;
  DS_TBenchRecord407 := TDictionary<string, TBenchRecord407>.Create;
  try
    DS_TBenchRecord407.Add('key', Default(TBenchRecord407));
  finally
    DS_TBenchRecord407.Free;
  end;
  DI_TBenchRecord407 := TDictionary<Integer, TBenchRecord407>.Create;
  try
    DI_TBenchRecord407.Add(1, Default(TBenchRecord407));
  finally
    DI_TBenchRecord407.Free;
  end;
  DG_TBenchRecord407 := TDictionary<TGUID, TBenchRecord407>.Create;
  try
    DG_TBenchRecord407.Add(TGUID.Empty, Default(TBenchRecord407));
  finally
    DG_TBenchRecord407.Free;
  end;
  DS_TBenchRecord408 := TDictionary<string, TBenchRecord408>.Create;
  try
    DS_TBenchRecord408.Add('key', Default(TBenchRecord408));
  finally
    DS_TBenchRecord408.Free;
  end;
  DI_TBenchRecord408 := TDictionary<Integer, TBenchRecord408>.Create;
  try
    DI_TBenchRecord408.Add(1, Default(TBenchRecord408));
  finally
    DI_TBenchRecord408.Free;
  end;
  DG_TBenchRecord408 := TDictionary<TGUID, TBenchRecord408>.Create;
  try
    DG_TBenchRecord408.Add(TGUID.Empty, Default(TBenchRecord408));
  finally
    DG_TBenchRecord408.Free;
  end;
  DS_TBenchRecord409 := TDictionary<string, TBenchRecord409>.Create;
  try
    DS_TBenchRecord409.Add('key', Default(TBenchRecord409));
  finally
    DS_TBenchRecord409.Free;
  end;
  DI_TBenchRecord409 := TDictionary<Integer, TBenchRecord409>.Create;
  try
    DI_TBenchRecord409.Add(1, Default(TBenchRecord409));
  finally
    DI_TBenchRecord409.Free;
  end;
  DG_TBenchRecord409 := TDictionary<TGUID, TBenchRecord409>.Create;
  try
    DG_TBenchRecord409.Add(TGUID.Empty, Default(TBenchRecord409));
  finally
    DG_TBenchRecord409.Free;
  end;
  DS_TBenchRecord410 := TDictionary<string, TBenchRecord410>.Create;
  try
    DS_TBenchRecord410.Add('key', Default(TBenchRecord410));
  finally
    DS_TBenchRecord410.Free;
  end;
  DI_TBenchRecord410 := TDictionary<Integer, TBenchRecord410>.Create;
  try
    DI_TBenchRecord410.Add(1, Default(TBenchRecord410));
  finally
    DI_TBenchRecord410.Free;
  end;
  DG_TBenchRecord410 := TDictionary<TGUID, TBenchRecord410>.Create;
  try
    DG_TBenchRecord410.Add(TGUID.Empty, Default(TBenchRecord410));
  finally
    DG_TBenchRecord410.Free;
  end;
  DS_TBenchRecord411 := TDictionary<string, TBenchRecord411>.Create;
  try
    DS_TBenchRecord411.Add('key', Default(TBenchRecord411));
  finally
    DS_TBenchRecord411.Free;
  end;
  DI_TBenchRecord411 := TDictionary<Integer, TBenchRecord411>.Create;
  try
    DI_TBenchRecord411.Add(1, Default(TBenchRecord411));
  finally
    DI_TBenchRecord411.Free;
  end;
  DG_TBenchRecord411 := TDictionary<TGUID, TBenchRecord411>.Create;
  try
    DG_TBenchRecord411.Add(TGUID.Empty, Default(TBenchRecord411));
  finally
    DG_TBenchRecord411.Free;
  end;
  DS_TBenchRecord412 := TDictionary<string, TBenchRecord412>.Create;
  try
    DS_TBenchRecord412.Add('key', Default(TBenchRecord412));
  finally
    DS_TBenchRecord412.Free;
  end;
  DI_TBenchRecord412 := TDictionary<Integer, TBenchRecord412>.Create;
  try
    DI_TBenchRecord412.Add(1, Default(TBenchRecord412));
  finally
    DI_TBenchRecord412.Free;
  end;
  DG_TBenchRecord412 := TDictionary<TGUID, TBenchRecord412>.Create;
  try
    DG_TBenchRecord412.Add(TGUID.Empty, Default(TBenchRecord412));
  finally
    DG_TBenchRecord412.Free;
  end;
  DS_TBenchRecord413 := TDictionary<string, TBenchRecord413>.Create;
  try
    DS_TBenchRecord413.Add('key', Default(TBenchRecord413));
  finally
    DS_TBenchRecord413.Free;
  end;
  DI_TBenchRecord413 := TDictionary<Integer, TBenchRecord413>.Create;
  try
    DI_TBenchRecord413.Add(1, Default(TBenchRecord413));
  finally
    DI_TBenchRecord413.Free;
  end;
  DG_TBenchRecord413 := TDictionary<TGUID, TBenchRecord413>.Create;
  try
    DG_TBenchRecord413.Add(TGUID.Empty, Default(TBenchRecord413));
  finally
    DG_TBenchRecord413.Free;
  end;
  DS_TBenchRecord414 := TDictionary<string, TBenchRecord414>.Create;
  try
    DS_TBenchRecord414.Add('key', Default(TBenchRecord414));
  finally
    DS_TBenchRecord414.Free;
  end;
  DI_TBenchRecord414 := TDictionary<Integer, TBenchRecord414>.Create;
  try
    DI_TBenchRecord414.Add(1, Default(TBenchRecord414));
  finally
    DI_TBenchRecord414.Free;
  end;
  DG_TBenchRecord414 := TDictionary<TGUID, TBenchRecord414>.Create;
  try
    DG_TBenchRecord414.Add(TGUID.Empty, Default(TBenchRecord414));
  finally
    DG_TBenchRecord414.Free;
  end;
  DS_TBenchRecord415 := TDictionary<string, TBenchRecord415>.Create;
  try
    DS_TBenchRecord415.Add('key', Default(TBenchRecord415));
  finally
    DS_TBenchRecord415.Free;
  end;
  DI_TBenchRecord415 := TDictionary<Integer, TBenchRecord415>.Create;
  try
    DI_TBenchRecord415.Add(1, Default(TBenchRecord415));
  finally
    DI_TBenchRecord415.Free;
  end;
  DG_TBenchRecord415 := TDictionary<TGUID, TBenchRecord415>.Create;
  try
    DG_TBenchRecord415.Add(TGUID.Empty, Default(TBenchRecord415));
  finally
    DG_TBenchRecord415.Free;
  end;
  DS_TBenchRecord416 := TDictionary<string, TBenchRecord416>.Create;
  try
    DS_TBenchRecord416.Add('key', Default(TBenchRecord416));
  finally
    DS_TBenchRecord416.Free;
  end;
  DI_TBenchRecord416 := TDictionary<Integer, TBenchRecord416>.Create;
  try
    DI_TBenchRecord416.Add(1, Default(TBenchRecord416));
  finally
    DI_TBenchRecord416.Free;
  end;
  DG_TBenchRecord416 := TDictionary<TGUID, TBenchRecord416>.Create;
  try
    DG_TBenchRecord416.Add(TGUID.Empty, Default(TBenchRecord416));
  finally
    DG_TBenchRecord416.Free;
  end;
  DS_TBenchRecord417 := TDictionary<string, TBenchRecord417>.Create;
  try
    DS_TBenchRecord417.Add('key', Default(TBenchRecord417));
  finally
    DS_TBenchRecord417.Free;
  end;
  DI_TBenchRecord417 := TDictionary<Integer, TBenchRecord417>.Create;
  try
    DI_TBenchRecord417.Add(1, Default(TBenchRecord417));
  finally
    DI_TBenchRecord417.Free;
  end;
  DG_TBenchRecord417 := TDictionary<TGUID, TBenchRecord417>.Create;
  try
    DG_TBenchRecord417.Add(TGUID.Empty, Default(TBenchRecord417));
  finally
    DG_TBenchRecord417.Free;
  end;
  DS_TBenchRecord418 := TDictionary<string, TBenchRecord418>.Create;
  try
    DS_TBenchRecord418.Add('key', Default(TBenchRecord418));
  finally
    DS_TBenchRecord418.Free;
  end;
  DI_TBenchRecord418 := TDictionary<Integer, TBenchRecord418>.Create;
  try
    DI_TBenchRecord418.Add(1, Default(TBenchRecord418));
  finally
    DI_TBenchRecord418.Free;
  end;
  DG_TBenchRecord418 := TDictionary<TGUID, TBenchRecord418>.Create;
  try
    DG_TBenchRecord418.Add(TGUID.Empty, Default(TBenchRecord418));
  finally
    DG_TBenchRecord418.Free;
  end;
  DS_TBenchRecord419 := TDictionary<string, TBenchRecord419>.Create;
  try
    DS_TBenchRecord419.Add('key', Default(TBenchRecord419));
  finally
    DS_TBenchRecord419.Free;
  end;
  DI_TBenchRecord419 := TDictionary<Integer, TBenchRecord419>.Create;
  try
    DI_TBenchRecord419.Add(1, Default(TBenchRecord419));
  finally
    DI_TBenchRecord419.Free;
  end;
  DG_TBenchRecord419 := TDictionary<TGUID, TBenchRecord419>.Create;
  try
    DG_TBenchRecord419.Add(TGUID.Empty, Default(TBenchRecord419));
  finally
    DG_TBenchRecord419.Free;
  end;
  DS_TBenchRecord420 := TDictionary<string, TBenchRecord420>.Create;
  try
    DS_TBenchRecord420.Add('key', Default(TBenchRecord420));
  finally
    DS_TBenchRecord420.Free;
  end;
  DI_TBenchRecord420 := TDictionary<Integer, TBenchRecord420>.Create;
  try
    DI_TBenchRecord420.Add(1, Default(TBenchRecord420));
  finally
    DI_TBenchRecord420.Free;
  end;
  DG_TBenchRecord420 := TDictionary<TGUID, TBenchRecord420>.Create;
  try
    DG_TBenchRecord420.Add(TGUID.Empty, Default(TBenchRecord420));
  finally
    DG_TBenchRecord420.Free;
  end;
  DS_TBenchRecord421 := TDictionary<string, TBenchRecord421>.Create;
  try
    DS_TBenchRecord421.Add('key', Default(TBenchRecord421));
  finally
    DS_TBenchRecord421.Free;
  end;
  DI_TBenchRecord421 := TDictionary<Integer, TBenchRecord421>.Create;
  try
    DI_TBenchRecord421.Add(1, Default(TBenchRecord421));
  finally
    DI_TBenchRecord421.Free;
  end;
  DG_TBenchRecord421 := TDictionary<TGUID, TBenchRecord421>.Create;
  try
    DG_TBenchRecord421.Add(TGUID.Empty, Default(TBenchRecord421));
  finally
    DG_TBenchRecord421.Free;
  end;
  DS_TBenchRecord422 := TDictionary<string, TBenchRecord422>.Create;
  try
    DS_TBenchRecord422.Add('key', Default(TBenchRecord422));
  finally
    DS_TBenchRecord422.Free;
  end;
  DI_TBenchRecord422 := TDictionary<Integer, TBenchRecord422>.Create;
  try
    DI_TBenchRecord422.Add(1, Default(TBenchRecord422));
  finally
    DI_TBenchRecord422.Free;
  end;
  DG_TBenchRecord422 := TDictionary<TGUID, TBenchRecord422>.Create;
  try
    DG_TBenchRecord422.Add(TGUID.Empty, Default(TBenchRecord422));
  finally
    DG_TBenchRecord422.Free;
  end;
  DS_TBenchRecord423 := TDictionary<string, TBenchRecord423>.Create;
  try
    DS_TBenchRecord423.Add('key', Default(TBenchRecord423));
  finally
    DS_TBenchRecord423.Free;
  end;
  DI_TBenchRecord423 := TDictionary<Integer, TBenchRecord423>.Create;
  try
    DI_TBenchRecord423.Add(1, Default(TBenchRecord423));
  finally
    DI_TBenchRecord423.Free;
  end;
  DG_TBenchRecord423 := TDictionary<TGUID, TBenchRecord423>.Create;
  try
    DG_TBenchRecord423.Add(TGUID.Empty, Default(TBenchRecord423));
  finally
    DG_TBenchRecord423.Free;
  end;
  DS_TBenchRecord424 := TDictionary<string, TBenchRecord424>.Create;
  try
    DS_TBenchRecord424.Add('key', Default(TBenchRecord424));
  finally
    DS_TBenchRecord424.Free;
  end;
  DI_TBenchRecord424 := TDictionary<Integer, TBenchRecord424>.Create;
  try
    DI_TBenchRecord424.Add(1, Default(TBenchRecord424));
  finally
    DI_TBenchRecord424.Free;
  end;
  DG_TBenchRecord424 := TDictionary<TGUID, TBenchRecord424>.Create;
  try
    DG_TBenchRecord424.Add(TGUID.Empty, Default(TBenchRecord424));
  finally
    DG_TBenchRecord424.Free;
  end;
  DS_TBenchRecord425 := TDictionary<string, TBenchRecord425>.Create;
  try
    DS_TBenchRecord425.Add('key', Default(TBenchRecord425));
  finally
    DS_TBenchRecord425.Free;
  end;
  DI_TBenchRecord425 := TDictionary<Integer, TBenchRecord425>.Create;
  try
    DI_TBenchRecord425.Add(1, Default(TBenchRecord425));
  finally
    DI_TBenchRecord425.Free;
  end;
  DG_TBenchRecord425 := TDictionary<TGUID, TBenchRecord425>.Create;
  try
    DG_TBenchRecord425.Add(TGUID.Empty, Default(TBenchRecord425));
  finally
    DG_TBenchRecord425.Free;
  end;
  DS_TBenchRecord426 := TDictionary<string, TBenchRecord426>.Create;
  try
    DS_TBenchRecord426.Add('key', Default(TBenchRecord426));
  finally
    DS_TBenchRecord426.Free;
  end;
  DI_TBenchRecord426 := TDictionary<Integer, TBenchRecord426>.Create;
  try
    DI_TBenchRecord426.Add(1, Default(TBenchRecord426));
  finally
    DI_TBenchRecord426.Free;
  end;
  DG_TBenchRecord426 := TDictionary<TGUID, TBenchRecord426>.Create;
  try
    DG_TBenchRecord426.Add(TGUID.Empty, Default(TBenchRecord426));
  finally
    DG_TBenchRecord426.Free;
  end;
  DS_TBenchRecord427 := TDictionary<string, TBenchRecord427>.Create;
  try
    DS_TBenchRecord427.Add('key', Default(TBenchRecord427));
  finally
    DS_TBenchRecord427.Free;
  end;
  DI_TBenchRecord427 := TDictionary<Integer, TBenchRecord427>.Create;
  try
    DI_TBenchRecord427.Add(1, Default(TBenchRecord427));
  finally
    DI_TBenchRecord427.Free;
  end;
  DG_TBenchRecord427 := TDictionary<TGUID, TBenchRecord427>.Create;
  try
    DG_TBenchRecord427.Add(TGUID.Empty, Default(TBenchRecord427));
  finally
    DG_TBenchRecord427.Free;
  end;
  DS_TBenchRecord428 := TDictionary<string, TBenchRecord428>.Create;
  try
    DS_TBenchRecord428.Add('key', Default(TBenchRecord428));
  finally
    DS_TBenchRecord428.Free;
  end;
  DI_TBenchRecord428 := TDictionary<Integer, TBenchRecord428>.Create;
  try
    DI_TBenchRecord428.Add(1, Default(TBenchRecord428));
  finally
    DI_TBenchRecord428.Free;
  end;
  DG_TBenchRecord428 := TDictionary<TGUID, TBenchRecord428>.Create;
  try
    DG_TBenchRecord428.Add(TGUID.Empty, Default(TBenchRecord428));
  finally
    DG_TBenchRecord428.Free;
  end;
  DS_TBenchRecord429 := TDictionary<string, TBenchRecord429>.Create;
  try
    DS_TBenchRecord429.Add('key', Default(TBenchRecord429));
  finally
    DS_TBenchRecord429.Free;
  end;
  DI_TBenchRecord429 := TDictionary<Integer, TBenchRecord429>.Create;
  try
    DI_TBenchRecord429.Add(1, Default(TBenchRecord429));
  finally
    DI_TBenchRecord429.Free;
  end;
  DG_TBenchRecord429 := TDictionary<TGUID, TBenchRecord429>.Create;
  try
    DG_TBenchRecord429.Add(TGUID.Empty, Default(TBenchRecord429));
  finally
    DG_TBenchRecord429.Free;
  end;
  DS_TBenchRecord430 := TDictionary<string, TBenchRecord430>.Create;
  try
    DS_TBenchRecord430.Add('key', Default(TBenchRecord430));
  finally
    DS_TBenchRecord430.Free;
  end;
  DI_TBenchRecord430 := TDictionary<Integer, TBenchRecord430>.Create;
  try
    DI_TBenchRecord430.Add(1, Default(TBenchRecord430));
  finally
    DI_TBenchRecord430.Free;
  end;
  DG_TBenchRecord430 := TDictionary<TGUID, TBenchRecord430>.Create;
  try
    DG_TBenchRecord430.Add(TGUID.Empty, Default(TBenchRecord430));
  finally
    DG_TBenchRecord430.Free;
  end;
  DS_TBenchRecord431 := TDictionary<string, TBenchRecord431>.Create;
  try
    DS_TBenchRecord431.Add('key', Default(TBenchRecord431));
  finally
    DS_TBenchRecord431.Free;
  end;
  DI_TBenchRecord431 := TDictionary<Integer, TBenchRecord431>.Create;
  try
    DI_TBenchRecord431.Add(1, Default(TBenchRecord431));
  finally
    DI_TBenchRecord431.Free;
  end;
  DG_TBenchRecord431 := TDictionary<TGUID, TBenchRecord431>.Create;
  try
    DG_TBenchRecord431.Add(TGUID.Empty, Default(TBenchRecord431));
  finally
    DG_TBenchRecord431.Free;
  end;
  DS_TBenchRecord432 := TDictionary<string, TBenchRecord432>.Create;
  try
    DS_TBenchRecord432.Add('key', Default(TBenchRecord432));
  finally
    DS_TBenchRecord432.Free;
  end;
  DI_TBenchRecord432 := TDictionary<Integer, TBenchRecord432>.Create;
  try
    DI_TBenchRecord432.Add(1, Default(TBenchRecord432));
  finally
    DI_TBenchRecord432.Free;
  end;
  DG_TBenchRecord432 := TDictionary<TGUID, TBenchRecord432>.Create;
  try
    DG_TBenchRecord432.Add(TGUID.Empty, Default(TBenchRecord432));
  finally
    DG_TBenchRecord432.Free;
  end;
  DS_TBenchRecord433 := TDictionary<string, TBenchRecord433>.Create;
  try
    DS_TBenchRecord433.Add('key', Default(TBenchRecord433));
  finally
    DS_TBenchRecord433.Free;
  end;
  DI_TBenchRecord433 := TDictionary<Integer, TBenchRecord433>.Create;
  try
    DI_TBenchRecord433.Add(1, Default(TBenchRecord433));
  finally
    DI_TBenchRecord433.Free;
  end;
  DG_TBenchRecord433 := TDictionary<TGUID, TBenchRecord433>.Create;
  try
    DG_TBenchRecord433.Add(TGUID.Empty, Default(TBenchRecord433));
  finally
    DG_TBenchRecord433.Free;
  end;
  DS_TBenchRecord434 := TDictionary<string, TBenchRecord434>.Create;
  try
    DS_TBenchRecord434.Add('key', Default(TBenchRecord434));
  finally
    DS_TBenchRecord434.Free;
  end;
  DI_TBenchRecord434 := TDictionary<Integer, TBenchRecord434>.Create;
  try
    DI_TBenchRecord434.Add(1, Default(TBenchRecord434));
  finally
    DI_TBenchRecord434.Free;
  end;
  DG_TBenchRecord434 := TDictionary<TGUID, TBenchRecord434>.Create;
  try
    DG_TBenchRecord434.Add(TGUID.Empty, Default(TBenchRecord434));
  finally
    DG_TBenchRecord434.Free;
  end;
  DS_TBenchRecord435 := TDictionary<string, TBenchRecord435>.Create;
  try
    DS_TBenchRecord435.Add('key', Default(TBenchRecord435));
  finally
    DS_TBenchRecord435.Free;
  end;
  DI_TBenchRecord435 := TDictionary<Integer, TBenchRecord435>.Create;
  try
    DI_TBenchRecord435.Add(1, Default(TBenchRecord435));
  finally
    DI_TBenchRecord435.Free;
  end;
  DG_TBenchRecord435 := TDictionary<TGUID, TBenchRecord435>.Create;
  try
    DG_TBenchRecord435.Add(TGUID.Empty, Default(TBenchRecord435));
  finally
    DG_TBenchRecord435.Free;
  end;
  DS_TBenchRecord436 := TDictionary<string, TBenchRecord436>.Create;
  try
    DS_TBenchRecord436.Add('key', Default(TBenchRecord436));
  finally
    DS_TBenchRecord436.Free;
  end;
  DI_TBenchRecord436 := TDictionary<Integer, TBenchRecord436>.Create;
  try
    DI_TBenchRecord436.Add(1, Default(TBenchRecord436));
  finally
    DI_TBenchRecord436.Free;
  end;
  DG_TBenchRecord436 := TDictionary<TGUID, TBenchRecord436>.Create;
  try
    DG_TBenchRecord436.Add(TGUID.Empty, Default(TBenchRecord436));
  finally
    DG_TBenchRecord436.Free;
  end;
  DS_TBenchRecord437 := TDictionary<string, TBenchRecord437>.Create;
  try
    DS_TBenchRecord437.Add('key', Default(TBenchRecord437));
  finally
    DS_TBenchRecord437.Free;
  end;
  DI_TBenchRecord437 := TDictionary<Integer, TBenchRecord437>.Create;
  try
    DI_TBenchRecord437.Add(1, Default(TBenchRecord437));
  finally
    DI_TBenchRecord437.Free;
  end;
  DG_TBenchRecord437 := TDictionary<TGUID, TBenchRecord437>.Create;
  try
    DG_TBenchRecord437.Add(TGUID.Empty, Default(TBenchRecord437));
  finally
    DG_TBenchRecord437.Free;
  end;
  DS_TBenchRecord438 := TDictionary<string, TBenchRecord438>.Create;
  try
    DS_TBenchRecord438.Add('key', Default(TBenchRecord438));
  finally
    DS_TBenchRecord438.Free;
  end;
  DI_TBenchRecord438 := TDictionary<Integer, TBenchRecord438>.Create;
  try
    DI_TBenchRecord438.Add(1, Default(TBenchRecord438));
  finally
    DI_TBenchRecord438.Free;
  end;
  DG_TBenchRecord438 := TDictionary<TGUID, TBenchRecord438>.Create;
  try
    DG_TBenchRecord438.Add(TGUID.Empty, Default(TBenchRecord438));
  finally
    DG_TBenchRecord438.Free;
  end;
  DS_TBenchRecord439 := TDictionary<string, TBenchRecord439>.Create;
  try
    DS_TBenchRecord439.Add('key', Default(TBenchRecord439));
  finally
    DS_TBenchRecord439.Free;
  end;
  DI_TBenchRecord439 := TDictionary<Integer, TBenchRecord439>.Create;
  try
    DI_TBenchRecord439.Add(1, Default(TBenchRecord439));
  finally
    DI_TBenchRecord439.Free;
  end;
  DG_TBenchRecord439 := TDictionary<TGUID, TBenchRecord439>.Create;
  try
    DG_TBenchRecord439.Add(TGUID.Empty, Default(TBenchRecord439));
  finally
    DG_TBenchRecord439.Free;
  end;
  DS_TBenchRecord440 := TDictionary<string, TBenchRecord440>.Create;
  try
    DS_TBenchRecord440.Add('key', Default(TBenchRecord440));
  finally
    DS_TBenchRecord440.Free;
  end;
  DI_TBenchRecord440 := TDictionary<Integer, TBenchRecord440>.Create;
  try
    DI_TBenchRecord440.Add(1, Default(TBenchRecord440));
  finally
    DI_TBenchRecord440.Free;
  end;
  DG_TBenchRecord440 := TDictionary<TGUID, TBenchRecord440>.Create;
  try
    DG_TBenchRecord440.Add(TGUID.Empty, Default(TBenchRecord440));
  finally
    DG_TBenchRecord440.Free;
  end;
  DS_TBenchRecord441 := TDictionary<string, TBenchRecord441>.Create;
  try
    DS_TBenchRecord441.Add('key', Default(TBenchRecord441));
  finally
    DS_TBenchRecord441.Free;
  end;
  DI_TBenchRecord441 := TDictionary<Integer, TBenchRecord441>.Create;
  try
    DI_TBenchRecord441.Add(1, Default(TBenchRecord441));
  finally
    DI_TBenchRecord441.Free;
  end;
  DG_TBenchRecord441 := TDictionary<TGUID, TBenchRecord441>.Create;
  try
    DG_TBenchRecord441.Add(TGUID.Empty, Default(TBenchRecord441));
  finally
    DG_TBenchRecord441.Free;
  end;
  DS_TBenchRecord442 := TDictionary<string, TBenchRecord442>.Create;
  try
    DS_TBenchRecord442.Add('key', Default(TBenchRecord442));
  finally
    DS_TBenchRecord442.Free;
  end;
  DI_TBenchRecord442 := TDictionary<Integer, TBenchRecord442>.Create;
  try
    DI_TBenchRecord442.Add(1, Default(TBenchRecord442));
  finally
    DI_TBenchRecord442.Free;
  end;
  DG_TBenchRecord442 := TDictionary<TGUID, TBenchRecord442>.Create;
  try
    DG_TBenchRecord442.Add(TGUID.Empty, Default(TBenchRecord442));
  finally
    DG_TBenchRecord442.Free;
  end;
  DS_TBenchRecord443 := TDictionary<string, TBenchRecord443>.Create;
  try
    DS_TBenchRecord443.Add('key', Default(TBenchRecord443));
  finally
    DS_TBenchRecord443.Free;
  end;
  DI_TBenchRecord443 := TDictionary<Integer, TBenchRecord443>.Create;
  try
    DI_TBenchRecord443.Add(1, Default(TBenchRecord443));
  finally
    DI_TBenchRecord443.Free;
  end;
  DG_TBenchRecord443 := TDictionary<TGUID, TBenchRecord443>.Create;
  try
    DG_TBenchRecord443.Add(TGUID.Empty, Default(TBenchRecord443));
  finally
    DG_TBenchRecord443.Free;
  end;
  DS_TBenchRecord444 := TDictionary<string, TBenchRecord444>.Create;
  try
    DS_TBenchRecord444.Add('key', Default(TBenchRecord444));
  finally
    DS_TBenchRecord444.Free;
  end;
  DI_TBenchRecord444 := TDictionary<Integer, TBenchRecord444>.Create;
  try
    DI_TBenchRecord444.Add(1, Default(TBenchRecord444));
  finally
    DI_TBenchRecord444.Free;
  end;
  DG_TBenchRecord444 := TDictionary<TGUID, TBenchRecord444>.Create;
  try
    DG_TBenchRecord444.Add(TGUID.Empty, Default(TBenchRecord444));
  finally
    DG_TBenchRecord444.Free;
  end;
  DS_TBenchRecord445 := TDictionary<string, TBenchRecord445>.Create;
  try
    DS_TBenchRecord445.Add('key', Default(TBenchRecord445));
  finally
    DS_TBenchRecord445.Free;
  end;
  DI_TBenchRecord445 := TDictionary<Integer, TBenchRecord445>.Create;
  try
    DI_TBenchRecord445.Add(1, Default(TBenchRecord445));
  finally
    DI_TBenchRecord445.Free;
  end;
  DG_TBenchRecord445 := TDictionary<TGUID, TBenchRecord445>.Create;
  try
    DG_TBenchRecord445.Add(TGUID.Empty, Default(TBenchRecord445));
  finally
    DG_TBenchRecord445.Free;
  end;
  DS_TBenchRecord446 := TDictionary<string, TBenchRecord446>.Create;
  try
    DS_TBenchRecord446.Add('key', Default(TBenchRecord446));
  finally
    DS_TBenchRecord446.Free;
  end;
  DI_TBenchRecord446 := TDictionary<Integer, TBenchRecord446>.Create;
  try
    DI_TBenchRecord446.Add(1, Default(TBenchRecord446));
  finally
    DI_TBenchRecord446.Free;
  end;
  DG_TBenchRecord446 := TDictionary<TGUID, TBenchRecord446>.Create;
  try
    DG_TBenchRecord446.Add(TGUID.Empty, Default(TBenchRecord446));
  finally
    DG_TBenchRecord446.Free;
  end;
  DS_TBenchRecord447 := TDictionary<string, TBenchRecord447>.Create;
  try
    DS_TBenchRecord447.Add('key', Default(TBenchRecord447));
  finally
    DS_TBenchRecord447.Free;
  end;
  DI_TBenchRecord447 := TDictionary<Integer, TBenchRecord447>.Create;
  try
    DI_TBenchRecord447.Add(1, Default(TBenchRecord447));
  finally
    DI_TBenchRecord447.Free;
  end;
  DG_TBenchRecord447 := TDictionary<TGUID, TBenchRecord447>.Create;
  try
    DG_TBenchRecord447.Add(TGUID.Empty, Default(TBenchRecord447));
  finally
    DG_TBenchRecord447.Free;
  end;
  DS_TBenchRecord448 := TDictionary<string, TBenchRecord448>.Create;
  try
    DS_TBenchRecord448.Add('key', Default(TBenchRecord448));
  finally
    DS_TBenchRecord448.Free;
  end;
  DI_TBenchRecord448 := TDictionary<Integer, TBenchRecord448>.Create;
  try
    DI_TBenchRecord448.Add(1, Default(TBenchRecord448));
  finally
    DI_TBenchRecord448.Free;
  end;
  DG_TBenchRecord448 := TDictionary<TGUID, TBenchRecord448>.Create;
  try
    DG_TBenchRecord448.Add(TGUID.Empty, Default(TBenchRecord448));
  finally
    DG_TBenchRecord448.Free;
  end;
  DS_TBenchRecord449 := TDictionary<string, TBenchRecord449>.Create;
  try
    DS_TBenchRecord449.Add('key', Default(TBenchRecord449));
  finally
    DS_TBenchRecord449.Free;
  end;
  DI_TBenchRecord449 := TDictionary<Integer, TBenchRecord449>.Create;
  try
    DI_TBenchRecord449.Add(1, Default(TBenchRecord449));
  finally
    DI_TBenchRecord449.Free;
  end;
  DG_TBenchRecord449 := TDictionary<TGUID, TBenchRecord449>.Create;
  try
    DG_TBenchRecord449.Add(TGUID.Empty, Default(TBenchRecord449));
  finally
    DG_TBenchRecord449.Free;
  end;
  DS_TBenchRecord450 := TDictionary<string, TBenchRecord450>.Create;
  try
    DS_TBenchRecord450.Add('key', Default(TBenchRecord450));
  finally
    DS_TBenchRecord450.Free;
  end;
  DI_TBenchRecord450 := TDictionary<Integer, TBenchRecord450>.Create;
  try
    DI_TBenchRecord450.Add(1, Default(TBenchRecord450));
  finally
    DI_TBenchRecord450.Free;
  end;
  DG_TBenchRecord450 := TDictionary<TGUID, TBenchRecord450>.Create;
  try
    DG_TBenchRecord450.Add(TGUID.Empty, Default(TBenchRecord450));
  finally
    DG_TBenchRecord450.Free;
  end;
  DS_TBenchRecord451 := TDictionary<string, TBenchRecord451>.Create;
  try
    DS_TBenchRecord451.Add('key', Default(TBenchRecord451));
  finally
    DS_TBenchRecord451.Free;
  end;
  DI_TBenchRecord451 := TDictionary<Integer, TBenchRecord451>.Create;
  try
    DI_TBenchRecord451.Add(1, Default(TBenchRecord451));
  finally
    DI_TBenchRecord451.Free;
  end;
  DG_TBenchRecord451 := TDictionary<TGUID, TBenchRecord451>.Create;
  try
    DG_TBenchRecord451.Add(TGUID.Empty, Default(TBenchRecord451));
  finally
    DG_TBenchRecord451.Free;
  end;
  DS_TBenchRecord452 := TDictionary<string, TBenchRecord452>.Create;
  try
    DS_TBenchRecord452.Add('key', Default(TBenchRecord452));
  finally
    DS_TBenchRecord452.Free;
  end;
  DI_TBenchRecord452 := TDictionary<Integer, TBenchRecord452>.Create;
  try
    DI_TBenchRecord452.Add(1, Default(TBenchRecord452));
  finally
    DI_TBenchRecord452.Free;
  end;
  DG_TBenchRecord452 := TDictionary<TGUID, TBenchRecord452>.Create;
  try
    DG_TBenchRecord452.Add(TGUID.Empty, Default(TBenchRecord452));
  finally
    DG_TBenchRecord452.Free;
  end;
  DS_TBenchRecord453 := TDictionary<string, TBenchRecord453>.Create;
  try
    DS_TBenchRecord453.Add('key', Default(TBenchRecord453));
  finally
    DS_TBenchRecord453.Free;
  end;
  DI_TBenchRecord453 := TDictionary<Integer, TBenchRecord453>.Create;
  try
    DI_TBenchRecord453.Add(1, Default(TBenchRecord453));
  finally
    DI_TBenchRecord453.Free;
  end;
  DG_TBenchRecord453 := TDictionary<TGUID, TBenchRecord453>.Create;
  try
    DG_TBenchRecord453.Add(TGUID.Empty, Default(TBenchRecord453));
  finally
    DG_TBenchRecord453.Free;
  end;
  DS_TBenchRecord454 := TDictionary<string, TBenchRecord454>.Create;
  try
    DS_TBenchRecord454.Add('key', Default(TBenchRecord454));
  finally
    DS_TBenchRecord454.Free;
  end;
  DI_TBenchRecord454 := TDictionary<Integer, TBenchRecord454>.Create;
  try
    DI_TBenchRecord454.Add(1, Default(TBenchRecord454));
  finally
    DI_TBenchRecord454.Free;
  end;
  DG_TBenchRecord454 := TDictionary<TGUID, TBenchRecord454>.Create;
  try
    DG_TBenchRecord454.Add(TGUID.Empty, Default(TBenchRecord454));
  finally
    DG_TBenchRecord454.Free;
  end;
  DS_TBenchRecord455 := TDictionary<string, TBenchRecord455>.Create;
  try
    DS_TBenchRecord455.Add('key', Default(TBenchRecord455));
  finally
    DS_TBenchRecord455.Free;
  end;
  DI_TBenchRecord455 := TDictionary<Integer, TBenchRecord455>.Create;
  try
    DI_TBenchRecord455.Add(1, Default(TBenchRecord455));
  finally
    DI_TBenchRecord455.Free;
  end;
  DG_TBenchRecord455 := TDictionary<TGUID, TBenchRecord455>.Create;
  try
    DG_TBenchRecord455.Add(TGUID.Empty, Default(TBenchRecord455));
  finally
    DG_TBenchRecord455.Free;
  end;
  DS_TBenchRecord456 := TDictionary<string, TBenchRecord456>.Create;
  try
    DS_TBenchRecord456.Add('key', Default(TBenchRecord456));
  finally
    DS_TBenchRecord456.Free;
  end;
  DI_TBenchRecord456 := TDictionary<Integer, TBenchRecord456>.Create;
  try
    DI_TBenchRecord456.Add(1, Default(TBenchRecord456));
  finally
    DI_TBenchRecord456.Free;
  end;
  DG_TBenchRecord456 := TDictionary<TGUID, TBenchRecord456>.Create;
  try
    DG_TBenchRecord456.Add(TGUID.Empty, Default(TBenchRecord456));
  finally
    DG_TBenchRecord456.Free;
  end;
  DS_TBenchRecord457 := TDictionary<string, TBenchRecord457>.Create;
  try
    DS_TBenchRecord457.Add('key', Default(TBenchRecord457));
  finally
    DS_TBenchRecord457.Free;
  end;
  DI_TBenchRecord457 := TDictionary<Integer, TBenchRecord457>.Create;
  try
    DI_TBenchRecord457.Add(1, Default(TBenchRecord457));
  finally
    DI_TBenchRecord457.Free;
  end;
  DG_TBenchRecord457 := TDictionary<TGUID, TBenchRecord457>.Create;
  try
    DG_TBenchRecord457.Add(TGUID.Empty, Default(TBenchRecord457));
  finally
    DG_TBenchRecord457.Free;
  end;
  DS_TBenchRecord458 := TDictionary<string, TBenchRecord458>.Create;
  try
    DS_TBenchRecord458.Add('key', Default(TBenchRecord458));
  finally
    DS_TBenchRecord458.Free;
  end;
  DI_TBenchRecord458 := TDictionary<Integer, TBenchRecord458>.Create;
  try
    DI_TBenchRecord458.Add(1, Default(TBenchRecord458));
  finally
    DI_TBenchRecord458.Free;
  end;
  DG_TBenchRecord458 := TDictionary<TGUID, TBenchRecord458>.Create;
  try
    DG_TBenchRecord458.Add(TGUID.Empty, Default(TBenchRecord458));
  finally
    DG_TBenchRecord458.Free;
  end;
  DS_TBenchRecord459 := TDictionary<string, TBenchRecord459>.Create;
  try
    DS_TBenchRecord459.Add('key', Default(TBenchRecord459));
  finally
    DS_TBenchRecord459.Free;
  end;
  DI_TBenchRecord459 := TDictionary<Integer, TBenchRecord459>.Create;
  try
    DI_TBenchRecord459.Add(1, Default(TBenchRecord459));
  finally
    DI_TBenchRecord459.Free;
  end;
  DG_TBenchRecord459 := TDictionary<TGUID, TBenchRecord459>.Create;
  try
    DG_TBenchRecord459.Add(TGUID.Empty, Default(TBenchRecord459));
  finally
    DG_TBenchRecord459.Free;
  end;
  DS_TBenchRecord460 := TDictionary<string, TBenchRecord460>.Create;
  try
    DS_TBenchRecord460.Add('key', Default(TBenchRecord460));
  finally
    DS_TBenchRecord460.Free;
  end;
  DI_TBenchRecord460 := TDictionary<Integer, TBenchRecord460>.Create;
  try
    DI_TBenchRecord460.Add(1, Default(TBenchRecord460));
  finally
    DI_TBenchRecord460.Free;
  end;
  DG_TBenchRecord460 := TDictionary<TGUID, TBenchRecord460>.Create;
  try
    DG_TBenchRecord460.Add(TGUID.Empty, Default(TBenchRecord460));
  finally
    DG_TBenchRecord460.Free;
  end;
  DS_TBenchRecord461 := TDictionary<string, TBenchRecord461>.Create;
  try
    DS_TBenchRecord461.Add('key', Default(TBenchRecord461));
  finally
    DS_TBenchRecord461.Free;
  end;
  DI_TBenchRecord461 := TDictionary<Integer, TBenchRecord461>.Create;
  try
    DI_TBenchRecord461.Add(1, Default(TBenchRecord461));
  finally
    DI_TBenchRecord461.Free;
  end;
  DG_TBenchRecord461 := TDictionary<TGUID, TBenchRecord461>.Create;
  try
    DG_TBenchRecord461.Add(TGUID.Empty, Default(TBenchRecord461));
  finally
    DG_TBenchRecord461.Free;
  end;
  DS_TBenchRecord462 := TDictionary<string, TBenchRecord462>.Create;
  try
    DS_TBenchRecord462.Add('key', Default(TBenchRecord462));
  finally
    DS_TBenchRecord462.Free;
  end;
  DI_TBenchRecord462 := TDictionary<Integer, TBenchRecord462>.Create;
  try
    DI_TBenchRecord462.Add(1, Default(TBenchRecord462));
  finally
    DI_TBenchRecord462.Free;
  end;
  DG_TBenchRecord462 := TDictionary<TGUID, TBenchRecord462>.Create;
  try
    DG_TBenchRecord462.Add(TGUID.Empty, Default(TBenchRecord462));
  finally
    DG_TBenchRecord462.Free;
  end;
  DS_TBenchRecord463 := TDictionary<string, TBenchRecord463>.Create;
  try
    DS_TBenchRecord463.Add('key', Default(TBenchRecord463));
  finally
    DS_TBenchRecord463.Free;
  end;
  DI_TBenchRecord463 := TDictionary<Integer, TBenchRecord463>.Create;
  try
    DI_TBenchRecord463.Add(1, Default(TBenchRecord463));
  finally
    DI_TBenchRecord463.Free;
  end;
  DG_TBenchRecord463 := TDictionary<TGUID, TBenchRecord463>.Create;
  try
    DG_TBenchRecord463.Add(TGUID.Empty, Default(TBenchRecord463));
  finally
    DG_TBenchRecord463.Free;
  end;
  DS_TBenchRecord464 := TDictionary<string, TBenchRecord464>.Create;
  try
    DS_TBenchRecord464.Add('key', Default(TBenchRecord464));
  finally
    DS_TBenchRecord464.Free;
  end;
  DI_TBenchRecord464 := TDictionary<Integer, TBenchRecord464>.Create;
  try
    DI_TBenchRecord464.Add(1, Default(TBenchRecord464));
  finally
    DI_TBenchRecord464.Free;
  end;
  DG_TBenchRecord464 := TDictionary<TGUID, TBenchRecord464>.Create;
  try
    DG_TBenchRecord464.Add(TGUID.Empty, Default(TBenchRecord464));
  finally
    DG_TBenchRecord464.Free;
  end;
  DS_TBenchRecord465 := TDictionary<string, TBenchRecord465>.Create;
  try
    DS_TBenchRecord465.Add('key', Default(TBenchRecord465));
  finally
    DS_TBenchRecord465.Free;
  end;
  DI_TBenchRecord465 := TDictionary<Integer, TBenchRecord465>.Create;
  try
    DI_TBenchRecord465.Add(1, Default(TBenchRecord465));
  finally
    DI_TBenchRecord465.Free;
  end;
  DG_TBenchRecord465 := TDictionary<TGUID, TBenchRecord465>.Create;
  try
    DG_TBenchRecord465.Add(TGUID.Empty, Default(TBenchRecord465));
  finally
    DG_TBenchRecord465.Free;
  end;
  DS_TBenchRecord466 := TDictionary<string, TBenchRecord466>.Create;
  try
    DS_TBenchRecord466.Add('key', Default(TBenchRecord466));
  finally
    DS_TBenchRecord466.Free;
  end;
  DI_TBenchRecord466 := TDictionary<Integer, TBenchRecord466>.Create;
  try
    DI_TBenchRecord466.Add(1, Default(TBenchRecord466));
  finally
    DI_TBenchRecord466.Free;
  end;
  DG_TBenchRecord466 := TDictionary<TGUID, TBenchRecord466>.Create;
  try
    DG_TBenchRecord466.Add(TGUID.Empty, Default(TBenchRecord466));
  finally
    DG_TBenchRecord466.Free;
  end;
  DS_TBenchRecord467 := TDictionary<string, TBenchRecord467>.Create;
  try
    DS_TBenchRecord467.Add('key', Default(TBenchRecord467));
  finally
    DS_TBenchRecord467.Free;
  end;
  DI_TBenchRecord467 := TDictionary<Integer, TBenchRecord467>.Create;
  try
    DI_TBenchRecord467.Add(1, Default(TBenchRecord467));
  finally
    DI_TBenchRecord467.Free;
  end;
  DG_TBenchRecord467 := TDictionary<TGUID, TBenchRecord467>.Create;
  try
    DG_TBenchRecord467.Add(TGUID.Empty, Default(TBenchRecord467));
  finally
    DG_TBenchRecord467.Free;
  end;
  DS_TBenchRecord468 := TDictionary<string, TBenchRecord468>.Create;
  try
    DS_TBenchRecord468.Add('key', Default(TBenchRecord468));
  finally
    DS_TBenchRecord468.Free;
  end;
  DI_TBenchRecord468 := TDictionary<Integer, TBenchRecord468>.Create;
  try
    DI_TBenchRecord468.Add(1, Default(TBenchRecord468));
  finally
    DI_TBenchRecord468.Free;
  end;
  DG_TBenchRecord468 := TDictionary<TGUID, TBenchRecord468>.Create;
  try
    DG_TBenchRecord468.Add(TGUID.Empty, Default(TBenchRecord468));
  finally
    DG_TBenchRecord468.Free;
  end;
  DS_TBenchRecord469 := TDictionary<string, TBenchRecord469>.Create;
  try
    DS_TBenchRecord469.Add('key', Default(TBenchRecord469));
  finally
    DS_TBenchRecord469.Free;
  end;
  DI_TBenchRecord469 := TDictionary<Integer, TBenchRecord469>.Create;
  try
    DI_TBenchRecord469.Add(1, Default(TBenchRecord469));
  finally
    DI_TBenchRecord469.Free;
  end;
  DG_TBenchRecord469 := TDictionary<TGUID, TBenchRecord469>.Create;
  try
    DG_TBenchRecord469.Add(TGUID.Empty, Default(TBenchRecord469));
  finally
    DG_TBenchRecord469.Free;
  end;
  DS_TBenchRecord470 := TDictionary<string, TBenchRecord470>.Create;
  try
    DS_TBenchRecord470.Add('key', Default(TBenchRecord470));
  finally
    DS_TBenchRecord470.Free;
  end;
  DI_TBenchRecord470 := TDictionary<Integer, TBenchRecord470>.Create;
  try
    DI_TBenchRecord470.Add(1, Default(TBenchRecord470));
  finally
    DI_TBenchRecord470.Free;
  end;
  DG_TBenchRecord470 := TDictionary<TGUID, TBenchRecord470>.Create;
  try
    DG_TBenchRecord470.Add(TGUID.Empty, Default(TBenchRecord470));
  finally
    DG_TBenchRecord470.Free;
  end;
  DS_TBenchRecord471 := TDictionary<string, TBenchRecord471>.Create;
  try
    DS_TBenchRecord471.Add('key', Default(TBenchRecord471));
  finally
    DS_TBenchRecord471.Free;
  end;
  DI_TBenchRecord471 := TDictionary<Integer, TBenchRecord471>.Create;
  try
    DI_TBenchRecord471.Add(1, Default(TBenchRecord471));
  finally
    DI_TBenchRecord471.Free;
  end;
  DG_TBenchRecord471 := TDictionary<TGUID, TBenchRecord471>.Create;
  try
    DG_TBenchRecord471.Add(TGUID.Empty, Default(TBenchRecord471));
  finally
    DG_TBenchRecord471.Free;
  end;
  DS_TBenchRecord472 := TDictionary<string, TBenchRecord472>.Create;
  try
    DS_TBenchRecord472.Add('key', Default(TBenchRecord472));
  finally
    DS_TBenchRecord472.Free;
  end;
  DI_TBenchRecord472 := TDictionary<Integer, TBenchRecord472>.Create;
  try
    DI_TBenchRecord472.Add(1, Default(TBenchRecord472));
  finally
    DI_TBenchRecord472.Free;
  end;
  DG_TBenchRecord472 := TDictionary<TGUID, TBenchRecord472>.Create;
  try
    DG_TBenchRecord472.Add(TGUID.Empty, Default(TBenchRecord472));
  finally
    DG_TBenchRecord472.Free;
  end;
  DS_TBenchRecord473 := TDictionary<string, TBenchRecord473>.Create;
  try
    DS_TBenchRecord473.Add('key', Default(TBenchRecord473));
  finally
    DS_TBenchRecord473.Free;
  end;
  DI_TBenchRecord473 := TDictionary<Integer, TBenchRecord473>.Create;
  try
    DI_TBenchRecord473.Add(1, Default(TBenchRecord473));
  finally
    DI_TBenchRecord473.Free;
  end;
  DG_TBenchRecord473 := TDictionary<TGUID, TBenchRecord473>.Create;
  try
    DG_TBenchRecord473.Add(TGUID.Empty, Default(TBenchRecord473));
  finally
    DG_TBenchRecord473.Free;
  end;
  DS_TBenchRecord474 := TDictionary<string, TBenchRecord474>.Create;
  try
    DS_TBenchRecord474.Add('key', Default(TBenchRecord474));
  finally
    DS_TBenchRecord474.Free;
  end;
  DI_TBenchRecord474 := TDictionary<Integer, TBenchRecord474>.Create;
  try
    DI_TBenchRecord474.Add(1, Default(TBenchRecord474));
  finally
    DI_TBenchRecord474.Free;
  end;
  DG_TBenchRecord474 := TDictionary<TGUID, TBenchRecord474>.Create;
  try
    DG_TBenchRecord474.Add(TGUID.Empty, Default(TBenchRecord474));
  finally
    DG_TBenchRecord474.Free;
  end;
  DS_TBenchRecord475 := TDictionary<string, TBenchRecord475>.Create;
  try
    DS_TBenchRecord475.Add('key', Default(TBenchRecord475));
  finally
    DS_TBenchRecord475.Free;
  end;
  DI_TBenchRecord475 := TDictionary<Integer, TBenchRecord475>.Create;
  try
    DI_TBenchRecord475.Add(1, Default(TBenchRecord475));
  finally
    DI_TBenchRecord475.Free;
  end;
  DG_TBenchRecord475 := TDictionary<TGUID, TBenchRecord475>.Create;
  try
    DG_TBenchRecord475.Add(TGUID.Empty, Default(TBenchRecord475));
  finally
    DG_TBenchRecord475.Free;
  end;
  DS_TBenchRecord476 := TDictionary<string, TBenchRecord476>.Create;
  try
    DS_TBenchRecord476.Add('key', Default(TBenchRecord476));
  finally
    DS_TBenchRecord476.Free;
  end;
  DI_TBenchRecord476 := TDictionary<Integer, TBenchRecord476>.Create;
  try
    DI_TBenchRecord476.Add(1, Default(TBenchRecord476));
  finally
    DI_TBenchRecord476.Free;
  end;
  DG_TBenchRecord476 := TDictionary<TGUID, TBenchRecord476>.Create;
  try
    DG_TBenchRecord476.Add(TGUID.Empty, Default(TBenchRecord476));
  finally
    DG_TBenchRecord476.Free;
  end;
  DS_TBenchRecord477 := TDictionary<string, TBenchRecord477>.Create;
  try
    DS_TBenchRecord477.Add('key', Default(TBenchRecord477));
  finally
    DS_TBenchRecord477.Free;
  end;
  DI_TBenchRecord477 := TDictionary<Integer, TBenchRecord477>.Create;
  try
    DI_TBenchRecord477.Add(1, Default(TBenchRecord477));
  finally
    DI_TBenchRecord477.Free;
  end;
  DG_TBenchRecord477 := TDictionary<TGUID, TBenchRecord477>.Create;
  try
    DG_TBenchRecord477.Add(TGUID.Empty, Default(TBenchRecord477));
  finally
    DG_TBenchRecord477.Free;
  end;
  DS_TBenchRecord478 := TDictionary<string, TBenchRecord478>.Create;
  try
    DS_TBenchRecord478.Add('key', Default(TBenchRecord478));
  finally
    DS_TBenchRecord478.Free;
  end;
  DI_TBenchRecord478 := TDictionary<Integer, TBenchRecord478>.Create;
  try
    DI_TBenchRecord478.Add(1, Default(TBenchRecord478));
  finally
    DI_TBenchRecord478.Free;
  end;
  DG_TBenchRecord478 := TDictionary<TGUID, TBenchRecord478>.Create;
  try
    DG_TBenchRecord478.Add(TGUID.Empty, Default(TBenchRecord478));
  finally
    DG_TBenchRecord478.Free;
  end;
  DS_TBenchRecord479 := TDictionary<string, TBenchRecord479>.Create;
  try
    DS_TBenchRecord479.Add('key', Default(TBenchRecord479));
  finally
    DS_TBenchRecord479.Free;
  end;
  DI_TBenchRecord479 := TDictionary<Integer, TBenchRecord479>.Create;
  try
    DI_TBenchRecord479.Add(1, Default(TBenchRecord479));
  finally
    DI_TBenchRecord479.Free;
  end;
  DG_TBenchRecord479 := TDictionary<TGUID, TBenchRecord479>.Create;
  try
    DG_TBenchRecord479.Add(TGUID.Empty, Default(TBenchRecord479));
  finally
    DG_TBenchRecord479.Free;
  end;
  DS_TBenchRecord480 := TDictionary<string, TBenchRecord480>.Create;
  try
    DS_TBenchRecord480.Add('key', Default(TBenchRecord480));
  finally
    DS_TBenchRecord480.Free;
  end;
  DI_TBenchRecord480 := TDictionary<Integer, TBenchRecord480>.Create;
  try
    DI_TBenchRecord480.Add(1, Default(TBenchRecord480));
  finally
    DI_TBenchRecord480.Free;
  end;
  DG_TBenchRecord480 := TDictionary<TGUID, TBenchRecord480>.Create;
  try
    DG_TBenchRecord480.Add(TGUID.Empty, Default(TBenchRecord480));
  finally
    DG_TBenchRecord480.Free;
  end;
  DS_TBenchRecord481 := TDictionary<string, TBenchRecord481>.Create;
  try
    DS_TBenchRecord481.Add('key', Default(TBenchRecord481));
  finally
    DS_TBenchRecord481.Free;
  end;
  DI_TBenchRecord481 := TDictionary<Integer, TBenchRecord481>.Create;
  try
    DI_TBenchRecord481.Add(1, Default(TBenchRecord481));
  finally
    DI_TBenchRecord481.Free;
  end;
  DG_TBenchRecord481 := TDictionary<TGUID, TBenchRecord481>.Create;
  try
    DG_TBenchRecord481.Add(TGUID.Empty, Default(TBenchRecord481));
  finally
    DG_TBenchRecord481.Free;
  end;
  DS_TBenchRecord482 := TDictionary<string, TBenchRecord482>.Create;
  try
    DS_TBenchRecord482.Add('key', Default(TBenchRecord482));
  finally
    DS_TBenchRecord482.Free;
  end;
  DI_TBenchRecord482 := TDictionary<Integer, TBenchRecord482>.Create;
  try
    DI_TBenchRecord482.Add(1, Default(TBenchRecord482));
  finally
    DI_TBenchRecord482.Free;
  end;
  DG_TBenchRecord482 := TDictionary<TGUID, TBenchRecord482>.Create;
  try
    DG_TBenchRecord482.Add(TGUID.Empty, Default(TBenchRecord482));
  finally
    DG_TBenchRecord482.Free;
  end;
  DS_TBenchRecord483 := TDictionary<string, TBenchRecord483>.Create;
  try
    DS_TBenchRecord483.Add('key', Default(TBenchRecord483));
  finally
    DS_TBenchRecord483.Free;
  end;
  DI_TBenchRecord483 := TDictionary<Integer, TBenchRecord483>.Create;
  try
    DI_TBenchRecord483.Add(1, Default(TBenchRecord483));
  finally
    DI_TBenchRecord483.Free;
  end;
  DG_TBenchRecord483 := TDictionary<TGUID, TBenchRecord483>.Create;
  try
    DG_TBenchRecord483.Add(TGUID.Empty, Default(TBenchRecord483));
  finally
    DG_TBenchRecord483.Free;
  end;
  DS_TBenchRecord484 := TDictionary<string, TBenchRecord484>.Create;
  try
    DS_TBenchRecord484.Add('key', Default(TBenchRecord484));
  finally
    DS_TBenchRecord484.Free;
  end;
  DI_TBenchRecord484 := TDictionary<Integer, TBenchRecord484>.Create;
  try
    DI_TBenchRecord484.Add(1, Default(TBenchRecord484));
  finally
    DI_TBenchRecord484.Free;
  end;
  DG_TBenchRecord484 := TDictionary<TGUID, TBenchRecord484>.Create;
  try
    DG_TBenchRecord484.Add(TGUID.Empty, Default(TBenchRecord484));
  finally
    DG_TBenchRecord484.Free;
  end;
  DS_TBenchRecord485 := TDictionary<string, TBenchRecord485>.Create;
  try
    DS_TBenchRecord485.Add('key', Default(TBenchRecord485));
  finally
    DS_TBenchRecord485.Free;
  end;
  DI_TBenchRecord485 := TDictionary<Integer, TBenchRecord485>.Create;
  try
    DI_TBenchRecord485.Add(1, Default(TBenchRecord485));
  finally
    DI_TBenchRecord485.Free;
  end;
  DG_TBenchRecord485 := TDictionary<TGUID, TBenchRecord485>.Create;
  try
    DG_TBenchRecord485.Add(TGUID.Empty, Default(TBenchRecord485));
  finally
    DG_TBenchRecord485.Free;
  end;
  DS_TBenchRecord486 := TDictionary<string, TBenchRecord486>.Create;
  try
    DS_TBenchRecord486.Add('key', Default(TBenchRecord486));
  finally
    DS_TBenchRecord486.Free;
  end;
  DI_TBenchRecord486 := TDictionary<Integer, TBenchRecord486>.Create;
  try
    DI_TBenchRecord486.Add(1, Default(TBenchRecord486));
  finally
    DI_TBenchRecord486.Free;
  end;
  DG_TBenchRecord486 := TDictionary<TGUID, TBenchRecord486>.Create;
  try
    DG_TBenchRecord486.Add(TGUID.Empty, Default(TBenchRecord486));
  finally
    DG_TBenchRecord486.Free;
  end;
  DS_TBenchRecord487 := TDictionary<string, TBenchRecord487>.Create;
  try
    DS_TBenchRecord487.Add('key', Default(TBenchRecord487));
  finally
    DS_TBenchRecord487.Free;
  end;
  DI_TBenchRecord487 := TDictionary<Integer, TBenchRecord487>.Create;
  try
    DI_TBenchRecord487.Add(1, Default(TBenchRecord487));
  finally
    DI_TBenchRecord487.Free;
  end;
  DG_TBenchRecord487 := TDictionary<TGUID, TBenchRecord487>.Create;
  try
    DG_TBenchRecord487.Add(TGUID.Empty, Default(TBenchRecord487));
  finally
    DG_TBenchRecord487.Free;
  end;
  DS_TBenchRecord488 := TDictionary<string, TBenchRecord488>.Create;
  try
    DS_TBenchRecord488.Add('key', Default(TBenchRecord488));
  finally
    DS_TBenchRecord488.Free;
  end;
  DI_TBenchRecord488 := TDictionary<Integer, TBenchRecord488>.Create;
  try
    DI_TBenchRecord488.Add(1, Default(TBenchRecord488));
  finally
    DI_TBenchRecord488.Free;
  end;
  DG_TBenchRecord488 := TDictionary<TGUID, TBenchRecord488>.Create;
  try
    DG_TBenchRecord488.Add(TGUID.Empty, Default(TBenchRecord488));
  finally
    DG_TBenchRecord488.Free;
  end;
  DS_TBenchRecord489 := TDictionary<string, TBenchRecord489>.Create;
  try
    DS_TBenchRecord489.Add('key', Default(TBenchRecord489));
  finally
    DS_TBenchRecord489.Free;
  end;
  DI_TBenchRecord489 := TDictionary<Integer, TBenchRecord489>.Create;
  try
    DI_TBenchRecord489.Add(1, Default(TBenchRecord489));
  finally
    DI_TBenchRecord489.Free;
  end;
  DG_TBenchRecord489 := TDictionary<TGUID, TBenchRecord489>.Create;
  try
    DG_TBenchRecord489.Add(TGUID.Empty, Default(TBenchRecord489));
  finally
    DG_TBenchRecord489.Free;
  end;
  DS_TBenchRecord490 := TDictionary<string, TBenchRecord490>.Create;
  try
    DS_TBenchRecord490.Add('key', Default(TBenchRecord490));
  finally
    DS_TBenchRecord490.Free;
  end;
  DI_TBenchRecord490 := TDictionary<Integer, TBenchRecord490>.Create;
  try
    DI_TBenchRecord490.Add(1, Default(TBenchRecord490));
  finally
    DI_TBenchRecord490.Free;
  end;
  DG_TBenchRecord490 := TDictionary<TGUID, TBenchRecord490>.Create;
  try
    DG_TBenchRecord490.Add(TGUID.Empty, Default(TBenchRecord490));
  finally
    DG_TBenchRecord490.Free;
  end;
  DS_TBenchRecord491 := TDictionary<string, TBenchRecord491>.Create;
  try
    DS_TBenchRecord491.Add('key', Default(TBenchRecord491));
  finally
    DS_TBenchRecord491.Free;
  end;
  DI_TBenchRecord491 := TDictionary<Integer, TBenchRecord491>.Create;
  try
    DI_TBenchRecord491.Add(1, Default(TBenchRecord491));
  finally
    DI_TBenchRecord491.Free;
  end;
  DG_TBenchRecord491 := TDictionary<TGUID, TBenchRecord491>.Create;
  try
    DG_TBenchRecord491.Add(TGUID.Empty, Default(TBenchRecord491));
  finally
    DG_TBenchRecord491.Free;
  end;
  DS_TBenchRecord492 := TDictionary<string, TBenchRecord492>.Create;
  try
    DS_TBenchRecord492.Add('key', Default(TBenchRecord492));
  finally
    DS_TBenchRecord492.Free;
  end;
  DI_TBenchRecord492 := TDictionary<Integer, TBenchRecord492>.Create;
  try
    DI_TBenchRecord492.Add(1, Default(TBenchRecord492));
  finally
    DI_TBenchRecord492.Free;
  end;
  DG_TBenchRecord492 := TDictionary<TGUID, TBenchRecord492>.Create;
  try
    DG_TBenchRecord492.Add(TGUID.Empty, Default(TBenchRecord492));
  finally
    DG_TBenchRecord492.Free;
  end;
  DS_TBenchRecord493 := TDictionary<string, TBenchRecord493>.Create;
  try
    DS_TBenchRecord493.Add('key', Default(TBenchRecord493));
  finally
    DS_TBenchRecord493.Free;
  end;
  DI_TBenchRecord493 := TDictionary<Integer, TBenchRecord493>.Create;
  try
    DI_TBenchRecord493.Add(1, Default(TBenchRecord493));
  finally
    DI_TBenchRecord493.Free;
  end;
  DG_TBenchRecord493 := TDictionary<TGUID, TBenchRecord493>.Create;
  try
    DG_TBenchRecord493.Add(TGUID.Empty, Default(TBenchRecord493));
  finally
    DG_TBenchRecord493.Free;
  end;
  DS_TBenchRecord494 := TDictionary<string, TBenchRecord494>.Create;
  try
    DS_TBenchRecord494.Add('key', Default(TBenchRecord494));
  finally
    DS_TBenchRecord494.Free;
  end;
  DI_TBenchRecord494 := TDictionary<Integer, TBenchRecord494>.Create;
  try
    DI_TBenchRecord494.Add(1, Default(TBenchRecord494));
  finally
    DI_TBenchRecord494.Free;
  end;
  DG_TBenchRecord494 := TDictionary<TGUID, TBenchRecord494>.Create;
  try
    DG_TBenchRecord494.Add(TGUID.Empty, Default(TBenchRecord494));
  finally
    DG_TBenchRecord494.Free;
  end;
  DS_TBenchRecord495 := TDictionary<string, TBenchRecord495>.Create;
  try
    DS_TBenchRecord495.Add('key', Default(TBenchRecord495));
  finally
    DS_TBenchRecord495.Free;
  end;
  DI_TBenchRecord495 := TDictionary<Integer, TBenchRecord495>.Create;
  try
    DI_TBenchRecord495.Add(1, Default(TBenchRecord495));
  finally
    DI_TBenchRecord495.Free;
  end;
  DG_TBenchRecord495 := TDictionary<TGUID, TBenchRecord495>.Create;
  try
    DG_TBenchRecord495.Add(TGUID.Empty, Default(TBenchRecord495));
  finally
    DG_TBenchRecord495.Free;
  end;
  DS_TBenchRecord496 := TDictionary<string, TBenchRecord496>.Create;
  try
    DS_TBenchRecord496.Add('key', Default(TBenchRecord496));
  finally
    DS_TBenchRecord496.Free;
  end;
  DI_TBenchRecord496 := TDictionary<Integer, TBenchRecord496>.Create;
  try
    DI_TBenchRecord496.Add(1, Default(TBenchRecord496));
  finally
    DI_TBenchRecord496.Free;
  end;
  DG_TBenchRecord496 := TDictionary<TGUID, TBenchRecord496>.Create;
  try
    DG_TBenchRecord496.Add(TGUID.Empty, Default(TBenchRecord496));
  finally
    DG_TBenchRecord496.Free;
  end;
  DS_TBenchRecord497 := TDictionary<string, TBenchRecord497>.Create;
  try
    DS_TBenchRecord497.Add('key', Default(TBenchRecord497));
  finally
    DS_TBenchRecord497.Free;
  end;
  DI_TBenchRecord497 := TDictionary<Integer, TBenchRecord497>.Create;
  try
    DI_TBenchRecord497.Add(1, Default(TBenchRecord497));
  finally
    DI_TBenchRecord497.Free;
  end;
  DG_TBenchRecord497 := TDictionary<TGUID, TBenchRecord497>.Create;
  try
    DG_TBenchRecord497.Add(TGUID.Empty, Default(TBenchRecord497));
  finally
    DG_TBenchRecord497.Free;
  end;
  DS_TBenchRecord498 := TDictionary<string, TBenchRecord498>.Create;
  try
    DS_TBenchRecord498.Add('key', Default(TBenchRecord498));
  finally
    DS_TBenchRecord498.Free;
  end;
  DI_TBenchRecord498 := TDictionary<Integer, TBenchRecord498>.Create;
  try
    DI_TBenchRecord498.Add(1, Default(TBenchRecord498));
  finally
    DI_TBenchRecord498.Free;
  end;
  DG_TBenchRecord498 := TDictionary<TGUID, TBenchRecord498>.Create;
  try
    DG_TBenchRecord498.Add(TGUID.Empty, Default(TBenchRecord498));
  finally
    DG_TBenchRecord498.Free;
  end;
  DS_TBenchRecord499 := TDictionary<string, TBenchRecord499>.Create;
  try
    DS_TBenchRecord499.Add('key', Default(TBenchRecord499));
  finally
    DS_TBenchRecord499.Free;
  end;
  DI_TBenchRecord499 := TDictionary<Integer, TBenchRecord499>.Create;
  try
    DI_TBenchRecord499.Add(1, Default(TBenchRecord499));
  finally
    DI_TBenchRecord499.Free;
  end;
  DG_TBenchRecord499 := TDictionary<TGUID, TBenchRecord499>.Create;
  try
    DG_TBenchRecord499.Add(TGUID.Empty, Default(TBenchRecord499));
  finally
    DG_TBenchRecord499.Free;
  end;
  DS_TBenchRecord500 := TDictionary<string, TBenchRecord500>.Create;
  try
    DS_TBenchRecord500.Add('key', Default(TBenchRecord500));
  finally
    DS_TBenchRecord500.Free;
  end;
  DI_TBenchRecord500 := TDictionary<Integer, TBenchRecord500>.Create;
  try
    DI_TBenchRecord500.Add(1, Default(TBenchRecord500));
  finally
    DI_TBenchRecord500.Free;
  end;
  DG_TBenchRecord500 := TDictionary<TGUID, TBenchRecord500>.Create;
  try
    DG_TBenchRecord500.Add(TGUID.Empty, Default(TBenchRecord500));
  finally
    DG_TBenchRecord500.Free;
  end;
end;

class procedure TBenchmarkRegistry.RunAll;
begin
  CreateAllLists;
  CreateAllDictionaries;
end;

end.
