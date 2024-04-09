; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41026 () Bool)

(assert start!41026)

(declare-fun b_free!10953 () Bool)

(declare-fun b_next!10953 () Bool)

(assert (=> start!41026 (= b_free!10953 (not b_next!10953))))

(declare-fun tp!38686 () Bool)

(declare-fun b_and!19115 () Bool)

(assert (=> start!41026 (= tp!38686 b_and!19115)))

(declare-fun b!456956 () Bool)

(declare-fun e!266905 () Bool)

(declare-fun tp_is_empty!12291 () Bool)

(assert (=> b!456956 (= e!266905 tp_is_empty!12291)))

(declare-fun b!456957 () Bool)

(declare-fun res!272908 () Bool)

(declare-fun e!266906 () Bool)

(assert (=> b!456957 (=> (not res!272908) (not e!266906))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!28349 0))(
  ( (array!28350 (arr!13615 (Array (_ BitVec 32) (_ BitVec 64))) (size!13967 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28349)

(assert (=> b!456957 (= res!272908 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13967 _keys!709))))))

(declare-fun b!456958 () Bool)

(declare-fun res!272915 () Bool)

(assert (=> b!456958 (=> (not res!272915) (not e!266906))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17493 0))(
  ( (V!17494 (val!6190 Int)) )
))
(declare-datatypes ((ValueCell!5802 0))(
  ( (ValueCellFull!5802 (v!8452 V!17493)) (EmptyCell!5802) )
))
(declare-datatypes ((array!28351 0))(
  ( (array!28352 (arr!13616 (Array (_ BitVec 32) ValueCell!5802)) (size!13968 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28351)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!456958 (= res!272915 (and (= (size!13968 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13967 _keys!709) (size!13968 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!456959 () Bool)

(declare-fun e!266908 () Bool)

(declare-fun e!266910 () Bool)

(assert (=> b!456959 (= e!266908 e!266910)))

(declare-fun res!272917 () Bool)

(assert (=> b!456959 (=> (not res!272917) (not e!266910))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!456959 (= res!272917 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!17493)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!206745 () array!28349)

(declare-fun zeroValue!515 () V!17493)

(declare-fun lt!206739 () array!28351)

(declare-datatypes ((tuple2!8118 0))(
  ( (tuple2!8119 (_1!4069 (_ BitVec 64)) (_2!4069 V!17493)) )
))
(declare-datatypes ((List!8221 0))(
  ( (Nil!8218) (Cons!8217 (h!9073 tuple2!8118) (t!14061 List!8221)) )
))
(declare-datatypes ((ListLongMap!7045 0))(
  ( (ListLongMap!7046 (toList!3538 List!8221)) )
))
(declare-fun lt!206742 () ListLongMap!7045)

(declare-fun getCurrentListMapNoExtraKeys!1713 (array!28349 array!28351 (_ BitVec 32) (_ BitVec 32) V!17493 V!17493 (_ BitVec 32) Int) ListLongMap!7045)

(assert (=> b!456959 (= lt!206742 (getCurrentListMapNoExtraKeys!1713 lt!206745 lt!206739 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!17493)

(assert (=> b!456959 (= lt!206739 (array!28352 (store (arr!13616 _values!549) i!563 (ValueCellFull!5802 v!412)) (size!13968 _values!549)))))

(declare-fun lt!206741 () ListLongMap!7045)

(assert (=> b!456959 (= lt!206741 (getCurrentListMapNoExtraKeys!1713 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!456960 () Bool)

(declare-fun res!272907 () Bool)

(assert (=> b!456960 (=> (not res!272907) (not e!266906))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28349 (_ BitVec 32)) Bool)

(assert (=> b!456960 (= res!272907 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!272918 () Bool)

(assert (=> start!41026 (=> (not res!272918) (not e!266906))))

(assert (=> start!41026 (= res!272918 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13967 _keys!709))))))

(assert (=> start!41026 e!266906))

(assert (=> start!41026 tp_is_empty!12291))

(assert (=> start!41026 tp!38686))

(assert (=> start!41026 true))

(declare-fun e!266912 () Bool)

(declare-fun array_inv!9850 (array!28351) Bool)

(assert (=> start!41026 (and (array_inv!9850 _values!549) e!266912)))

(declare-fun array_inv!9851 (array!28349) Bool)

(assert (=> start!41026 (array_inv!9851 _keys!709)))

(declare-fun b!456961 () Bool)

(declare-fun e!266911 () Bool)

(assert (=> b!456961 (= e!266911 tp_is_empty!12291)))

(declare-fun b!456962 () Bool)

(declare-fun res!272911 () Bool)

(assert (=> b!456962 (=> (not res!272911) (not e!266908))))

(assert (=> b!456962 (= res!272911 (bvsle from!863 i!563))))

(declare-fun b!456963 () Bool)

(declare-fun res!272906 () Bool)

(assert (=> b!456963 (=> (not res!272906) (not e!266906))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!456963 (= res!272906 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!20077 () Bool)

(declare-fun mapRes!20077 () Bool)

(declare-fun tp!38685 () Bool)

(assert (=> mapNonEmpty!20077 (= mapRes!20077 (and tp!38685 e!266911))))

(declare-fun mapKey!20077 () (_ BitVec 32))

(declare-fun mapRest!20077 () (Array (_ BitVec 32) ValueCell!5802))

(declare-fun mapValue!20077 () ValueCell!5802)

(assert (=> mapNonEmpty!20077 (= (arr!13616 _values!549) (store mapRest!20077 mapKey!20077 mapValue!20077))))

(declare-fun b!456964 () Bool)

(declare-fun res!272912 () Bool)

(assert (=> b!456964 (=> (not res!272912) (not e!266906))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!456964 (= res!272912 (validKeyInArray!0 k0!794))))

(declare-fun b!456965 () Bool)

(declare-fun res!272913 () Bool)

(assert (=> b!456965 (=> (not res!272913) (not e!266906))))

(declare-datatypes ((List!8222 0))(
  ( (Nil!8219) (Cons!8218 (h!9074 (_ BitVec 64)) (t!14062 List!8222)) )
))
(declare-fun arrayNoDuplicates!0 (array!28349 (_ BitVec 32) List!8222) Bool)

(assert (=> b!456965 (= res!272913 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8219))))

(declare-fun mapIsEmpty!20077 () Bool)

(assert (=> mapIsEmpty!20077 mapRes!20077))

(declare-fun b!456966 () Bool)

(declare-fun res!272916 () Bool)

(assert (=> b!456966 (=> (not res!272916) (not e!266908))))

(assert (=> b!456966 (= res!272916 (arrayNoDuplicates!0 lt!206745 #b00000000000000000000000000000000 Nil!8219))))

(declare-fun b!456967 () Bool)

(declare-fun e!266907 () Bool)

(assert (=> b!456967 (= e!266910 (not e!266907))))

(declare-fun res!272909 () Bool)

(assert (=> b!456967 (=> res!272909 e!266907)))

(assert (=> b!456967 (= res!272909 (not (validKeyInArray!0 (select (arr!13615 _keys!709) from!863))))))

(declare-fun lt!206744 () ListLongMap!7045)

(declare-fun lt!206738 () ListLongMap!7045)

(assert (=> b!456967 (= lt!206744 lt!206738)))

(declare-fun lt!206743 () ListLongMap!7045)

(declare-fun +!1558 (ListLongMap!7045 tuple2!8118) ListLongMap!7045)

(assert (=> b!456967 (= lt!206738 (+!1558 lt!206743 (tuple2!8119 k0!794 v!412)))))

(assert (=> b!456967 (= lt!206744 (getCurrentListMapNoExtraKeys!1713 lt!206745 lt!206739 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!456967 (= lt!206743 (getCurrentListMapNoExtraKeys!1713 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!13239 0))(
  ( (Unit!13240) )
))
(declare-fun lt!206740 () Unit!13239)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!722 (array!28349 array!28351 (_ BitVec 32) (_ BitVec 32) V!17493 V!17493 (_ BitVec 32) (_ BitVec 64) V!17493 (_ BitVec 32) Int) Unit!13239)

(assert (=> b!456967 (= lt!206740 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!722 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!456968 () Bool)

(declare-fun res!272905 () Bool)

(assert (=> b!456968 (=> (not res!272905) (not e!266906))))

(assert (=> b!456968 (= res!272905 (or (= (select (arr!13615 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13615 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!456969 () Bool)

(declare-fun res!272910 () Bool)

(assert (=> b!456969 (=> (not res!272910) (not e!266906))))

(declare-fun arrayContainsKey!0 (array!28349 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!456969 (= res!272910 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!456970 () Bool)

(declare-fun get!6708 (ValueCell!5802 V!17493) V!17493)

(declare-fun dynLambda!870 (Int (_ BitVec 64)) V!17493)

(assert (=> b!456970 (= e!266907 (= lt!206742 (+!1558 lt!206738 (tuple2!8119 (select (arr!13615 _keys!709) from!863) (get!6708 (select (arr!13616 _values!549) from!863) (dynLambda!870 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!456971 () Bool)

(assert (=> b!456971 (= e!266912 (and e!266905 mapRes!20077))))

(declare-fun condMapEmpty!20077 () Bool)

(declare-fun mapDefault!20077 () ValueCell!5802)

(assert (=> b!456971 (= condMapEmpty!20077 (= (arr!13616 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5802)) mapDefault!20077)))))

(declare-fun b!456972 () Bool)

(assert (=> b!456972 (= e!266906 e!266908)))

(declare-fun res!272914 () Bool)

(assert (=> b!456972 (=> (not res!272914) (not e!266908))))

(assert (=> b!456972 (= res!272914 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206745 mask!1025))))

(assert (=> b!456972 (= lt!206745 (array!28350 (store (arr!13615 _keys!709) i!563 k0!794) (size!13967 _keys!709)))))

(assert (= (and start!41026 res!272918) b!456963))

(assert (= (and b!456963 res!272906) b!456958))

(assert (= (and b!456958 res!272915) b!456960))

(assert (= (and b!456960 res!272907) b!456965))

(assert (= (and b!456965 res!272913) b!456957))

(assert (= (and b!456957 res!272908) b!456964))

(assert (= (and b!456964 res!272912) b!456968))

(assert (= (and b!456968 res!272905) b!456969))

(assert (= (and b!456969 res!272910) b!456972))

(assert (= (and b!456972 res!272914) b!456966))

(assert (= (and b!456966 res!272916) b!456962))

(assert (= (and b!456962 res!272911) b!456959))

(assert (= (and b!456959 res!272917) b!456967))

(assert (= (and b!456967 (not res!272909)) b!456970))

(assert (= (and b!456971 condMapEmpty!20077) mapIsEmpty!20077))

(assert (= (and b!456971 (not condMapEmpty!20077)) mapNonEmpty!20077))

(get-info :version)

(assert (= (and mapNonEmpty!20077 ((_ is ValueCellFull!5802) mapValue!20077)) b!456961))

(assert (= (and b!456971 ((_ is ValueCellFull!5802) mapDefault!20077)) b!456956))

(assert (= start!41026 b!456971))

(declare-fun b_lambda!9715 () Bool)

(assert (=> (not b_lambda!9715) (not b!456970)))

(declare-fun t!14060 () Bool)

(declare-fun tb!3797 () Bool)

(assert (=> (and start!41026 (= defaultEntry!557 defaultEntry!557) t!14060) tb!3797))

(declare-fun result!7125 () Bool)

(assert (=> tb!3797 (= result!7125 tp_is_empty!12291)))

(assert (=> b!456970 t!14060))

(declare-fun b_and!19117 () Bool)

(assert (= b_and!19115 (and (=> t!14060 result!7125) b_and!19117)))

(declare-fun m!440327 () Bool)

(assert (=> b!456966 m!440327))

(declare-fun m!440329 () Bool)

(assert (=> b!456963 m!440329))

(declare-fun m!440331 () Bool)

(assert (=> b!456968 m!440331))

(declare-fun m!440333 () Bool)

(assert (=> start!41026 m!440333))

(declare-fun m!440335 () Bool)

(assert (=> start!41026 m!440335))

(declare-fun m!440337 () Bool)

(assert (=> b!456970 m!440337))

(declare-fun m!440339 () Bool)

(assert (=> b!456970 m!440339))

(declare-fun m!440341 () Bool)

(assert (=> b!456970 m!440341))

(assert (=> b!456970 m!440341))

(assert (=> b!456970 m!440339))

(declare-fun m!440343 () Bool)

(assert (=> b!456970 m!440343))

(declare-fun m!440345 () Bool)

(assert (=> b!456970 m!440345))

(declare-fun m!440347 () Bool)

(assert (=> b!456965 m!440347))

(declare-fun m!440349 () Bool)

(assert (=> mapNonEmpty!20077 m!440349))

(declare-fun m!440351 () Bool)

(assert (=> b!456964 m!440351))

(declare-fun m!440353 () Bool)

(assert (=> b!456969 m!440353))

(declare-fun m!440355 () Bool)

(assert (=> b!456959 m!440355))

(declare-fun m!440357 () Bool)

(assert (=> b!456959 m!440357))

(declare-fun m!440359 () Bool)

(assert (=> b!456959 m!440359))

(declare-fun m!440361 () Bool)

(assert (=> b!456960 m!440361))

(declare-fun m!440363 () Bool)

(assert (=> b!456972 m!440363))

(declare-fun m!440365 () Bool)

(assert (=> b!456972 m!440365))

(assert (=> b!456967 m!440337))

(declare-fun m!440367 () Bool)

(assert (=> b!456967 m!440367))

(declare-fun m!440369 () Bool)

(assert (=> b!456967 m!440369))

(assert (=> b!456967 m!440337))

(declare-fun m!440371 () Bool)

(assert (=> b!456967 m!440371))

(declare-fun m!440373 () Bool)

(assert (=> b!456967 m!440373))

(declare-fun m!440375 () Bool)

(assert (=> b!456967 m!440375))

(check-sat (not start!41026) (not b!456960) (not mapNonEmpty!20077) (not b_next!10953) (not b!456970) (not b!456959) (not b_lambda!9715) (not b!456966) (not b!456965) (not b!456963) tp_is_empty!12291 (not b!456969) (not b!456967) (not b!456972) b_and!19117 (not b!456964))
(check-sat b_and!19117 (not b_next!10953))
(get-model)

(declare-fun b_lambda!9719 () Bool)

(assert (= b_lambda!9715 (or (and start!41026 b_free!10953) b_lambda!9719)))

(check-sat (not start!41026) (not b!456960) (not mapNonEmpty!20077) (not b_next!10953) (not b!456959) (not b!456966) (not b!456965) (not b!456963) tp_is_empty!12291 (not b!456969) (not b!456967) (not b!456972) (not b_lambda!9719) (not b!456970) b_and!19117 (not b!456964))
(check-sat b_and!19117 (not b_next!10953))
(get-model)

(declare-fun d!74535 () Bool)

(assert (=> d!74535 (= (validKeyInArray!0 k0!794) (and (not (= k0!794 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!794 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!456964 d!74535))

(declare-fun d!74537 () Bool)

(declare-fun res!272966 () Bool)

(declare-fun e!266945 () Bool)

(assert (=> d!74537 (=> res!272966 e!266945)))

(assert (=> d!74537 (= res!272966 (bvsge #b00000000000000000000000000000000 (size!13967 _keys!709)))))

(assert (=> d!74537 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025) e!266945)))

(declare-fun bm!30088 () Bool)

(declare-fun call!30091 () Bool)

(assert (=> bm!30088 (= call!30091 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!709 mask!1025))))

(declare-fun b!457036 () Bool)

(declare-fun e!266944 () Bool)

(declare-fun e!266943 () Bool)

(assert (=> b!457036 (= e!266944 e!266943)))

(declare-fun lt!206776 () (_ BitVec 64))

(assert (=> b!457036 (= lt!206776 (select (arr!13615 _keys!709) #b00000000000000000000000000000000))))

(declare-fun lt!206778 () Unit!13239)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!28349 (_ BitVec 64) (_ BitVec 32)) Unit!13239)

(assert (=> b!457036 (= lt!206778 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!709 lt!206776 #b00000000000000000000000000000000))))

(assert (=> b!457036 (arrayContainsKey!0 _keys!709 lt!206776 #b00000000000000000000000000000000)))

(declare-fun lt!206777 () Unit!13239)

(assert (=> b!457036 (= lt!206777 lt!206778)))

(declare-fun res!272965 () Bool)

(declare-datatypes ((SeekEntryResult!3521 0))(
  ( (MissingZero!3521 (index!16263 (_ BitVec 32))) (Found!3521 (index!16264 (_ BitVec 32))) (Intermediate!3521 (undefined!4333 Bool) (index!16265 (_ BitVec 32)) (x!42666 (_ BitVec 32))) (Undefined!3521) (MissingVacant!3521 (index!16266 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!28349 (_ BitVec 32)) SeekEntryResult!3521)

(assert (=> b!457036 (= res!272965 (= (seekEntryOrOpen!0 (select (arr!13615 _keys!709) #b00000000000000000000000000000000) _keys!709 mask!1025) (Found!3521 #b00000000000000000000000000000000)))))

(assert (=> b!457036 (=> (not res!272965) (not e!266943))))

(declare-fun b!457037 () Bool)

(assert (=> b!457037 (= e!266943 call!30091)))

(declare-fun b!457038 () Bool)

(assert (=> b!457038 (= e!266944 call!30091)))

(declare-fun b!457039 () Bool)

(assert (=> b!457039 (= e!266945 e!266944)))

(declare-fun c!56267 () Bool)

(assert (=> b!457039 (= c!56267 (validKeyInArray!0 (select (arr!13615 _keys!709) #b00000000000000000000000000000000)))))

(assert (= (and d!74537 (not res!272966)) b!457039))

(assert (= (and b!457039 c!56267) b!457036))

(assert (= (and b!457039 (not c!56267)) b!457038))

(assert (= (and b!457036 res!272965) b!457037))

(assert (= (or b!457037 b!457038) bm!30088))

(declare-fun m!440427 () Bool)

(assert (=> bm!30088 m!440427))

(declare-fun m!440429 () Bool)

(assert (=> b!457036 m!440429))

(declare-fun m!440431 () Bool)

(assert (=> b!457036 m!440431))

(declare-fun m!440433 () Bool)

(assert (=> b!457036 m!440433))

(assert (=> b!457036 m!440429))

(declare-fun m!440435 () Bool)

(assert (=> b!457036 m!440435))

(assert (=> b!457039 m!440429))

(assert (=> b!457039 m!440429))

(declare-fun m!440437 () Bool)

(assert (=> b!457039 m!440437))

(assert (=> b!456960 d!74537))

(declare-fun b!457064 () Bool)

(declare-fun lt!206798 () Unit!13239)

(declare-fun lt!206796 () Unit!13239)

(assert (=> b!457064 (= lt!206798 lt!206796)))

(declare-fun lt!206799 () (_ BitVec 64))

(declare-fun lt!206797 () (_ BitVec 64))

(declare-fun lt!206793 () ListLongMap!7045)

(declare-fun lt!206795 () V!17493)

(declare-fun contains!2502 (ListLongMap!7045 (_ BitVec 64)) Bool)

(assert (=> b!457064 (not (contains!2502 (+!1558 lt!206793 (tuple2!8119 lt!206797 lt!206795)) lt!206799))))

(declare-fun addStillNotContains!149 (ListLongMap!7045 (_ BitVec 64) V!17493 (_ BitVec 64)) Unit!13239)

(assert (=> b!457064 (= lt!206796 (addStillNotContains!149 lt!206793 lt!206797 lt!206795 lt!206799))))

(assert (=> b!457064 (= lt!206799 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!457064 (= lt!206795 (get!6708 (select (arr!13616 lt!206739) from!863) (dynLambda!870 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!457064 (= lt!206797 (select (arr!13615 lt!206745) from!863))))

(declare-fun call!30094 () ListLongMap!7045)

(assert (=> b!457064 (= lt!206793 call!30094)))

(declare-fun e!266964 () ListLongMap!7045)

(assert (=> b!457064 (= e!266964 (+!1558 call!30094 (tuple2!8119 (select (arr!13615 lt!206745) from!863) (get!6708 (select (arr!13616 lt!206739) from!863) (dynLambda!870 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!457065 () Bool)

(declare-fun e!266960 () ListLongMap!7045)

(assert (=> b!457065 (= e!266960 e!266964)))

(declare-fun c!56276 () Bool)

(assert (=> b!457065 (= c!56276 (validKeyInArray!0 (select (arr!13615 lt!206745) from!863)))))

(declare-fun b!457066 () Bool)

(declare-fun res!272978 () Bool)

(declare-fun e!266965 () Bool)

(assert (=> b!457066 (=> (not res!272978) (not e!266965))))

(declare-fun lt!206794 () ListLongMap!7045)

(assert (=> b!457066 (= res!272978 (not (contains!2502 lt!206794 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!457067 () Bool)

(assert (=> b!457067 (= e!266960 (ListLongMap!7046 Nil!8218))))

(declare-fun d!74539 () Bool)

(assert (=> d!74539 e!266965))

(declare-fun res!272977 () Bool)

(assert (=> d!74539 (=> (not res!272977) (not e!266965))))

(assert (=> d!74539 (= res!272977 (not (contains!2502 lt!206794 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74539 (= lt!206794 e!266960)))

(declare-fun c!56278 () Bool)

(assert (=> d!74539 (= c!56278 (bvsge from!863 (size!13967 lt!206745)))))

(assert (=> d!74539 (validMask!0 mask!1025)))

(assert (=> d!74539 (= (getCurrentListMapNoExtraKeys!1713 lt!206745 lt!206739 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557) lt!206794)))

(declare-fun e!266963 () Bool)

(declare-fun b!457068 () Bool)

(assert (=> b!457068 (= e!266963 (= lt!206794 (getCurrentListMapNoExtraKeys!1713 lt!206745 lt!206739 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!457069 () Bool)

(declare-fun e!266966 () Bool)

(assert (=> b!457069 (= e!266966 e!266963)))

(declare-fun c!56279 () Bool)

(assert (=> b!457069 (= c!56279 (bvslt from!863 (size!13967 lt!206745)))))

(declare-fun b!457070 () Bool)

(assert (=> b!457070 (= e!266965 e!266966)))

(declare-fun c!56277 () Bool)

(declare-fun e!266962 () Bool)

(assert (=> b!457070 (= c!56277 e!266962)))

(declare-fun res!272975 () Bool)

(assert (=> b!457070 (=> (not res!272975) (not e!266962))))

(assert (=> b!457070 (= res!272975 (bvslt from!863 (size!13967 lt!206745)))))

(declare-fun bm!30091 () Bool)

(assert (=> bm!30091 (= call!30094 (getCurrentListMapNoExtraKeys!1713 lt!206745 lt!206739 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!457071 () Bool)

(declare-fun isEmpty!566 (ListLongMap!7045) Bool)

(assert (=> b!457071 (= e!266963 (isEmpty!566 lt!206794))))

(declare-fun b!457072 () Bool)

(assert (=> b!457072 (= e!266962 (validKeyInArray!0 (select (arr!13615 lt!206745) from!863)))))

(assert (=> b!457072 (bvsge from!863 #b00000000000000000000000000000000)))

(declare-fun b!457073 () Bool)

(assert (=> b!457073 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13967 lt!206745)))))

(assert (=> b!457073 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13968 lt!206739)))))

(declare-fun e!266961 () Bool)

(declare-fun apply!314 (ListLongMap!7045 (_ BitVec 64)) V!17493)

(assert (=> b!457073 (= e!266961 (= (apply!314 lt!206794 (select (arr!13615 lt!206745) from!863)) (get!6708 (select (arr!13616 lt!206739) from!863) (dynLambda!870 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!457074 () Bool)

(assert (=> b!457074 (= e!266966 e!266961)))

(assert (=> b!457074 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13967 lt!206745)))))

(declare-fun res!272976 () Bool)

(assert (=> b!457074 (= res!272976 (contains!2502 lt!206794 (select (arr!13615 lt!206745) from!863)))))

(assert (=> b!457074 (=> (not res!272976) (not e!266961))))

(declare-fun b!457075 () Bool)

(assert (=> b!457075 (= e!266964 call!30094)))

(assert (= (and d!74539 c!56278) b!457067))

(assert (= (and d!74539 (not c!56278)) b!457065))

(assert (= (and b!457065 c!56276) b!457064))

(assert (= (and b!457065 (not c!56276)) b!457075))

(assert (= (or b!457064 b!457075) bm!30091))

(assert (= (and d!74539 res!272977) b!457066))

(assert (= (and b!457066 res!272978) b!457070))

(assert (= (and b!457070 res!272975) b!457072))

(assert (= (and b!457070 c!56277) b!457074))

(assert (= (and b!457070 (not c!56277)) b!457069))

(assert (= (and b!457074 res!272976) b!457073))

(assert (= (and b!457069 c!56279) b!457068))

(assert (= (and b!457069 (not c!56279)) b!457071))

(declare-fun b_lambda!9721 () Bool)

(assert (=> (not b_lambda!9721) (not b!457064)))

(assert (=> b!457064 t!14060))

(declare-fun b_and!19123 () Bool)

(assert (= b_and!19117 (and (=> t!14060 result!7125) b_and!19123)))

(declare-fun b_lambda!9723 () Bool)

(assert (=> (not b_lambda!9723) (not b!457073)))

(assert (=> b!457073 t!14060))

(declare-fun b_and!19125 () Bool)

(assert (= b_and!19123 (and (=> t!14060 result!7125) b_and!19125)))

(declare-fun m!440439 () Bool)

(assert (=> b!457071 m!440439))

(declare-fun m!440441 () Bool)

(assert (=> d!74539 m!440441))

(assert (=> d!74539 m!440329))

(declare-fun m!440443 () Bool)

(assert (=> b!457065 m!440443))

(assert (=> b!457065 m!440443))

(declare-fun m!440445 () Bool)

(assert (=> b!457065 m!440445))

(assert (=> b!457074 m!440443))

(assert (=> b!457074 m!440443))

(declare-fun m!440447 () Bool)

(assert (=> b!457074 m!440447))

(declare-fun m!440449 () Bool)

(assert (=> b!457068 m!440449))

(declare-fun m!440451 () Bool)

(assert (=> b!457064 m!440451))

(declare-fun m!440453 () Bool)

(assert (=> b!457064 m!440453))

(assert (=> b!457064 m!440339))

(declare-fun m!440455 () Bool)

(assert (=> b!457064 m!440455))

(assert (=> b!457064 m!440443))

(declare-fun m!440457 () Bool)

(assert (=> b!457064 m!440457))

(declare-fun m!440459 () Bool)

(assert (=> b!457064 m!440459))

(assert (=> b!457064 m!440451))

(assert (=> b!457064 m!440457))

(assert (=> b!457064 m!440339))

(declare-fun m!440461 () Bool)

(assert (=> b!457064 m!440461))

(declare-fun m!440463 () Bool)

(assert (=> b!457066 m!440463))

(assert (=> b!457072 m!440443))

(assert (=> b!457072 m!440443))

(assert (=> b!457072 m!440445))

(assert (=> b!457073 m!440339))

(assert (=> b!457073 m!440457))

(assert (=> b!457073 m!440339))

(assert (=> b!457073 m!440461))

(assert (=> b!457073 m!440443))

(assert (=> b!457073 m!440457))

(assert (=> b!457073 m!440443))

(declare-fun m!440465 () Bool)

(assert (=> b!457073 m!440465))

(assert (=> bm!30091 m!440449))

(assert (=> b!456959 d!74539))

(declare-fun b!457076 () Bool)

(declare-fun lt!206805 () Unit!13239)

(declare-fun lt!206803 () Unit!13239)

(assert (=> b!457076 (= lt!206805 lt!206803)))

(declare-fun lt!206804 () (_ BitVec 64))

(declare-fun lt!206806 () (_ BitVec 64))

(declare-fun lt!206800 () ListLongMap!7045)

(declare-fun lt!206802 () V!17493)

(assert (=> b!457076 (not (contains!2502 (+!1558 lt!206800 (tuple2!8119 lt!206804 lt!206802)) lt!206806))))

(assert (=> b!457076 (= lt!206803 (addStillNotContains!149 lt!206800 lt!206804 lt!206802 lt!206806))))

(assert (=> b!457076 (= lt!206806 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!457076 (= lt!206802 (get!6708 (select (arr!13616 _values!549) from!863) (dynLambda!870 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!457076 (= lt!206804 (select (arr!13615 _keys!709) from!863))))

(declare-fun call!30095 () ListLongMap!7045)

(assert (=> b!457076 (= lt!206800 call!30095)))

(declare-fun e!266971 () ListLongMap!7045)

(assert (=> b!457076 (= e!266971 (+!1558 call!30095 (tuple2!8119 (select (arr!13615 _keys!709) from!863) (get!6708 (select (arr!13616 _values!549) from!863) (dynLambda!870 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!457077 () Bool)

(declare-fun e!266967 () ListLongMap!7045)

(assert (=> b!457077 (= e!266967 e!266971)))

(declare-fun c!56280 () Bool)

(assert (=> b!457077 (= c!56280 (validKeyInArray!0 (select (arr!13615 _keys!709) from!863)))))

(declare-fun b!457078 () Bool)

(declare-fun res!272982 () Bool)

(declare-fun e!266972 () Bool)

(assert (=> b!457078 (=> (not res!272982) (not e!266972))))

(declare-fun lt!206801 () ListLongMap!7045)

(assert (=> b!457078 (= res!272982 (not (contains!2502 lt!206801 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!457079 () Bool)

(assert (=> b!457079 (= e!266967 (ListLongMap!7046 Nil!8218))))

(declare-fun d!74541 () Bool)

(assert (=> d!74541 e!266972))

(declare-fun res!272981 () Bool)

(assert (=> d!74541 (=> (not res!272981) (not e!266972))))

(assert (=> d!74541 (= res!272981 (not (contains!2502 lt!206801 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74541 (= lt!206801 e!266967)))

(declare-fun c!56282 () Bool)

(assert (=> d!74541 (= c!56282 (bvsge from!863 (size!13967 _keys!709)))))

(assert (=> d!74541 (validMask!0 mask!1025)))

(assert (=> d!74541 (= (getCurrentListMapNoExtraKeys!1713 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557) lt!206801)))

(declare-fun b!457080 () Bool)

(declare-fun e!266970 () Bool)

(assert (=> b!457080 (= e!266970 (= lt!206801 (getCurrentListMapNoExtraKeys!1713 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!457081 () Bool)

(declare-fun e!266973 () Bool)

(assert (=> b!457081 (= e!266973 e!266970)))

(declare-fun c!56283 () Bool)

(assert (=> b!457081 (= c!56283 (bvslt from!863 (size!13967 _keys!709)))))

(declare-fun b!457082 () Bool)

(assert (=> b!457082 (= e!266972 e!266973)))

(declare-fun c!56281 () Bool)

(declare-fun e!266969 () Bool)

(assert (=> b!457082 (= c!56281 e!266969)))

(declare-fun res!272979 () Bool)

(assert (=> b!457082 (=> (not res!272979) (not e!266969))))

(assert (=> b!457082 (= res!272979 (bvslt from!863 (size!13967 _keys!709)))))

(declare-fun bm!30092 () Bool)

(assert (=> bm!30092 (= call!30095 (getCurrentListMapNoExtraKeys!1713 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!457083 () Bool)

(assert (=> b!457083 (= e!266970 (isEmpty!566 lt!206801))))

(declare-fun b!457084 () Bool)

(assert (=> b!457084 (= e!266969 (validKeyInArray!0 (select (arr!13615 _keys!709) from!863)))))

(assert (=> b!457084 (bvsge from!863 #b00000000000000000000000000000000)))

(declare-fun b!457085 () Bool)

(assert (=> b!457085 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13967 _keys!709)))))

(assert (=> b!457085 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13968 _values!549)))))

(declare-fun e!266968 () Bool)

(assert (=> b!457085 (= e!266968 (= (apply!314 lt!206801 (select (arr!13615 _keys!709) from!863)) (get!6708 (select (arr!13616 _values!549) from!863) (dynLambda!870 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!457086 () Bool)

(assert (=> b!457086 (= e!266973 e!266968)))

(assert (=> b!457086 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13967 _keys!709)))))

(declare-fun res!272980 () Bool)

(assert (=> b!457086 (= res!272980 (contains!2502 lt!206801 (select (arr!13615 _keys!709) from!863)))))

(assert (=> b!457086 (=> (not res!272980) (not e!266968))))

(declare-fun b!457087 () Bool)

(assert (=> b!457087 (= e!266971 call!30095)))

(assert (= (and d!74541 c!56282) b!457079))

(assert (= (and d!74541 (not c!56282)) b!457077))

(assert (= (and b!457077 c!56280) b!457076))

(assert (= (and b!457077 (not c!56280)) b!457087))

(assert (= (or b!457076 b!457087) bm!30092))

(assert (= (and d!74541 res!272981) b!457078))

(assert (= (and b!457078 res!272982) b!457082))

(assert (= (and b!457082 res!272979) b!457084))

(assert (= (and b!457082 c!56281) b!457086))

(assert (= (and b!457082 (not c!56281)) b!457081))

(assert (= (and b!457086 res!272980) b!457085))

(assert (= (and b!457081 c!56283) b!457080))

(assert (= (and b!457081 (not c!56283)) b!457083))

(declare-fun b_lambda!9725 () Bool)

(assert (=> (not b_lambda!9725) (not b!457076)))

(assert (=> b!457076 t!14060))

(declare-fun b_and!19127 () Bool)

(assert (= b_and!19125 (and (=> t!14060 result!7125) b_and!19127)))

(declare-fun b_lambda!9727 () Bool)

(assert (=> (not b_lambda!9727) (not b!457085)))

(assert (=> b!457085 t!14060))

(declare-fun b_and!19129 () Bool)

(assert (= b_and!19127 (and (=> t!14060 result!7125) b_and!19129)))

(declare-fun m!440467 () Bool)

(assert (=> b!457083 m!440467))

(declare-fun m!440469 () Bool)

(assert (=> d!74541 m!440469))

(assert (=> d!74541 m!440329))

(assert (=> b!457077 m!440337))

(assert (=> b!457077 m!440337))

(assert (=> b!457077 m!440371))

(assert (=> b!457086 m!440337))

(assert (=> b!457086 m!440337))

(declare-fun m!440471 () Bool)

(assert (=> b!457086 m!440471))

(declare-fun m!440473 () Bool)

(assert (=> b!457080 m!440473))

(declare-fun m!440475 () Bool)

(assert (=> b!457076 m!440475))

(declare-fun m!440477 () Bool)

(assert (=> b!457076 m!440477))

(assert (=> b!457076 m!440339))

(declare-fun m!440479 () Bool)

(assert (=> b!457076 m!440479))

(assert (=> b!457076 m!440337))

(assert (=> b!457076 m!440341))

(declare-fun m!440481 () Bool)

(assert (=> b!457076 m!440481))

(assert (=> b!457076 m!440475))

(assert (=> b!457076 m!440341))

(assert (=> b!457076 m!440339))

(assert (=> b!457076 m!440343))

(declare-fun m!440483 () Bool)

(assert (=> b!457078 m!440483))

(assert (=> b!457084 m!440337))

(assert (=> b!457084 m!440337))

(assert (=> b!457084 m!440371))

(assert (=> b!457085 m!440339))

(assert (=> b!457085 m!440341))

(assert (=> b!457085 m!440339))

(assert (=> b!457085 m!440343))

(assert (=> b!457085 m!440337))

(assert (=> b!457085 m!440341))

(assert (=> b!457085 m!440337))

(declare-fun m!440485 () Bool)

(assert (=> b!457085 m!440485))

(assert (=> bm!30092 m!440473))

(assert (=> b!456959 d!74541))

(declare-fun b!457088 () Bool)

(declare-fun lt!206812 () Unit!13239)

(declare-fun lt!206810 () Unit!13239)

(assert (=> b!457088 (= lt!206812 lt!206810)))

(declare-fun lt!206813 () (_ BitVec 64))

(declare-fun lt!206809 () V!17493)

(declare-fun lt!206807 () ListLongMap!7045)

(declare-fun lt!206811 () (_ BitVec 64))

(assert (=> b!457088 (not (contains!2502 (+!1558 lt!206807 (tuple2!8119 lt!206811 lt!206809)) lt!206813))))

(assert (=> b!457088 (= lt!206810 (addStillNotContains!149 lt!206807 lt!206811 lt!206809 lt!206813))))

(assert (=> b!457088 (= lt!206813 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!457088 (= lt!206809 (get!6708 (select (arr!13616 _values!549) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!870 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!457088 (= lt!206811 (select (arr!13615 _keys!709) (bvadd #b00000000000000000000000000000001 from!863)))))

(declare-fun call!30096 () ListLongMap!7045)

(assert (=> b!457088 (= lt!206807 call!30096)))

(declare-fun e!266978 () ListLongMap!7045)

(assert (=> b!457088 (= e!266978 (+!1558 call!30096 (tuple2!8119 (select (arr!13615 _keys!709) (bvadd #b00000000000000000000000000000001 from!863)) (get!6708 (select (arr!13616 _values!549) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!870 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!457089 () Bool)

(declare-fun e!266974 () ListLongMap!7045)

(assert (=> b!457089 (= e!266974 e!266978)))

(declare-fun c!56284 () Bool)

(assert (=> b!457089 (= c!56284 (validKeyInArray!0 (select (arr!13615 _keys!709) (bvadd #b00000000000000000000000000000001 from!863))))))

(declare-fun b!457090 () Bool)

(declare-fun res!272986 () Bool)

(declare-fun e!266979 () Bool)

(assert (=> b!457090 (=> (not res!272986) (not e!266979))))

(declare-fun lt!206808 () ListLongMap!7045)

(assert (=> b!457090 (= res!272986 (not (contains!2502 lt!206808 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!457091 () Bool)

(assert (=> b!457091 (= e!266974 (ListLongMap!7046 Nil!8218))))

(declare-fun d!74543 () Bool)

(assert (=> d!74543 e!266979))

(declare-fun res!272985 () Bool)

(assert (=> d!74543 (=> (not res!272985) (not e!266979))))

(assert (=> d!74543 (= res!272985 (not (contains!2502 lt!206808 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74543 (= lt!206808 e!266974)))

(declare-fun c!56286 () Bool)

(assert (=> d!74543 (= c!56286 (bvsge (bvadd #b00000000000000000000000000000001 from!863) (size!13967 _keys!709)))))

(assert (=> d!74543 (validMask!0 mask!1025)))

(assert (=> d!74543 (= (getCurrentListMapNoExtraKeys!1713 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!206808)))

(declare-fun e!266977 () Bool)

(declare-fun b!457092 () Bool)

(assert (=> b!457092 (= e!266977 (= lt!206808 (getCurrentListMapNoExtraKeys!1713 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!457093 () Bool)

(declare-fun e!266980 () Bool)

(assert (=> b!457093 (= e!266980 e!266977)))

(declare-fun c!56287 () Bool)

(assert (=> b!457093 (= c!56287 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13967 _keys!709)))))

(declare-fun b!457094 () Bool)

(assert (=> b!457094 (= e!266979 e!266980)))

(declare-fun c!56285 () Bool)

(declare-fun e!266976 () Bool)

(assert (=> b!457094 (= c!56285 e!266976)))

(declare-fun res!272983 () Bool)

(assert (=> b!457094 (=> (not res!272983) (not e!266976))))

(assert (=> b!457094 (= res!272983 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13967 _keys!709)))))

(declare-fun bm!30093 () Bool)

(assert (=> bm!30093 (= call!30096 (getCurrentListMapNoExtraKeys!1713 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!457095 () Bool)

(assert (=> b!457095 (= e!266977 (isEmpty!566 lt!206808))))

(declare-fun b!457096 () Bool)

(assert (=> b!457096 (= e!266976 (validKeyInArray!0 (select (arr!13615 _keys!709) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!457096 (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))

(declare-fun b!457097 () Bool)

(assert (=> b!457097 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13967 _keys!709)))))

(assert (=> b!457097 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13968 _values!549)))))

(declare-fun e!266975 () Bool)

(assert (=> b!457097 (= e!266975 (= (apply!314 lt!206808 (select (arr!13615 _keys!709) (bvadd #b00000000000000000000000000000001 from!863))) (get!6708 (select (arr!13616 _values!549) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!870 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!457098 () Bool)

(assert (=> b!457098 (= e!266980 e!266975)))

(assert (=> b!457098 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13967 _keys!709)))))

(declare-fun res!272984 () Bool)

(assert (=> b!457098 (= res!272984 (contains!2502 lt!206808 (select (arr!13615 _keys!709) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!457098 (=> (not res!272984) (not e!266975))))

(declare-fun b!457099 () Bool)

(assert (=> b!457099 (= e!266978 call!30096)))

(assert (= (and d!74543 c!56286) b!457091))

(assert (= (and d!74543 (not c!56286)) b!457089))

(assert (= (and b!457089 c!56284) b!457088))

(assert (= (and b!457089 (not c!56284)) b!457099))

(assert (= (or b!457088 b!457099) bm!30093))

(assert (= (and d!74543 res!272985) b!457090))

(assert (= (and b!457090 res!272986) b!457094))

(assert (= (and b!457094 res!272983) b!457096))

(assert (= (and b!457094 c!56285) b!457098))

(assert (= (and b!457094 (not c!56285)) b!457093))

(assert (= (and b!457098 res!272984) b!457097))

(assert (= (and b!457093 c!56287) b!457092))

(assert (= (and b!457093 (not c!56287)) b!457095))

(declare-fun b_lambda!9729 () Bool)

(assert (=> (not b_lambda!9729) (not b!457088)))

(assert (=> b!457088 t!14060))

(declare-fun b_and!19131 () Bool)

(assert (= b_and!19129 (and (=> t!14060 result!7125) b_and!19131)))

(declare-fun b_lambda!9731 () Bool)

(assert (=> (not b_lambda!9731) (not b!457097)))

(assert (=> b!457097 t!14060))

(declare-fun b_and!19133 () Bool)

(assert (= b_and!19131 (and (=> t!14060 result!7125) b_and!19133)))

(declare-fun m!440487 () Bool)

(assert (=> b!457095 m!440487))

(declare-fun m!440489 () Bool)

(assert (=> d!74543 m!440489))

(assert (=> d!74543 m!440329))

(declare-fun m!440491 () Bool)

(assert (=> b!457089 m!440491))

(assert (=> b!457089 m!440491))

(declare-fun m!440493 () Bool)

(assert (=> b!457089 m!440493))

(assert (=> b!457098 m!440491))

(assert (=> b!457098 m!440491))

(declare-fun m!440495 () Bool)

(assert (=> b!457098 m!440495))

(declare-fun m!440497 () Bool)

(assert (=> b!457092 m!440497))

(declare-fun m!440499 () Bool)

(assert (=> b!457088 m!440499))

(declare-fun m!440501 () Bool)

(assert (=> b!457088 m!440501))

(assert (=> b!457088 m!440339))

(declare-fun m!440503 () Bool)

(assert (=> b!457088 m!440503))

(assert (=> b!457088 m!440491))

(declare-fun m!440505 () Bool)

(assert (=> b!457088 m!440505))

(declare-fun m!440507 () Bool)

(assert (=> b!457088 m!440507))

(assert (=> b!457088 m!440499))

(assert (=> b!457088 m!440505))

(assert (=> b!457088 m!440339))

(declare-fun m!440509 () Bool)

(assert (=> b!457088 m!440509))

(declare-fun m!440511 () Bool)

(assert (=> b!457090 m!440511))

(assert (=> b!457096 m!440491))

(assert (=> b!457096 m!440491))

(assert (=> b!457096 m!440493))

(assert (=> b!457097 m!440339))

(assert (=> b!457097 m!440505))

(assert (=> b!457097 m!440339))

(assert (=> b!457097 m!440509))

(assert (=> b!457097 m!440491))

(assert (=> b!457097 m!440505))

(assert (=> b!457097 m!440491))

(declare-fun m!440513 () Bool)

(assert (=> b!457097 m!440513))

(assert (=> bm!30093 m!440497))

(assert (=> b!456967 d!74543))

(declare-fun d!74545 () Bool)

(declare-fun e!266983 () Bool)

(assert (=> d!74545 e!266983))

(declare-fun res!272991 () Bool)

(assert (=> d!74545 (=> (not res!272991) (not e!266983))))

(declare-fun lt!206824 () ListLongMap!7045)

(assert (=> d!74545 (= res!272991 (contains!2502 lt!206824 (_1!4069 (tuple2!8119 k0!794 v!412))))))

(declare-fun lt!206825 () List!8221)

(assert (=> d!74545 (= lt!206824 (ListLongMap!7046 lt!206825))))

(declare-fun lt!206823 () Unit!13239)

(declare-fun lt!206822 () Unit!13239)

(assert (=> d!74545 (= lt!206823 lt!206822)))

(declare-datatypes ((Option!376 0))(
  ( (Some!375 (v!8457 V!17493)) (None!374) )
))
(declare-fun getValueByKey!370 (List!8221 (_ BitVec 64)) Option!376)

(assert (=> d!74545 (= (getValueByKey!370 lt!206825 (_1!4069 (tuple2!8119 k0!794 v!412))) (Some!375 (_2!4069 (tuple2!8119 k0!794 v!412))))))

(declare-fun lemmaContainsTupThenGetReturnValue!194 (List!8221 (_ BitVec 64) V!17493) Unit!13239)

(assert (=> d!74545 (= lt!206822 (lemmaContainsTupThenGetReturnValue!194 lt!206825 (_1!4069 (tuple2!8119 k0!794 v!412)) (_2!4069 (tuple2!8119 k0!794 v!412))))))

(declare-fun insertStrictlySorted!196 (List!8221 (_ BitVec 64) V!17493) List!8221)

(assert (=> d!74545 (= lt!206825 (insertStrictlySorted!196 (toList!3538 lt!206743) (_1!4069 (tuple2!8119 k0!794 v!412)) (_2!4069 (tuple2!8119 k0!794 v!412))))))

(assert (=> d!74545 (= (+!1558 lt!206743 (tuple2!8119 k0!794 v!412)) lt!206824)))

(declare-fun b!457104 () Bool)

(declare-fun res!272992 () Bool)

(assert (=> b!457104 (=> (not res!272992) (not e!266983))))

(assert (=> b!457104 (= res!272992 (= (getValueByKey!370 (toList!3538 lt!206824) (_1!4069 (tuple2!8119 k0!794 v!412))) (Some!375 (_2!4069 (tuple2!8119 k0!794 v!412)))))))

(declare-fun b!457105 () Bool)

(declare-fun contains!2503 (List!8221 tuple2!8118) Bool)

(assert (=> b!457105 (= e!266983 (contains!2503 (toList!3538 lt!206824) (tuple2!8119 k0!794 v!412)))))

(assert (= (and d!74545 res!272991) b!457104))

(assert (= (and b!457104 res!272992) b!457105))

(declare-fun m!440515 () Bool)

(assert (=> d!74545 m!440515))

(declare-fun m!440517 () Bool)

(assert (=> d!74545 m!440517))

(declare-fun m!440519 () Bool)

(assert (=> d!74545 m!440519))

(declare-fun m!440521 () Bool)

(assert (=> d!74545 m!440521))

(declare-fun m!440523 () Bool)

(assert (=> b!457104 m!440523))

(declare-fun m!440525 () Bool)

(assert (=> b!457105 m!440525))

(assert (=> b!456967 d!74545))

(declare-fun b!457106 () Bool)

(declare-fun lt!206831 () Unit!13239)

(declare-fun lt!206829 () Unit!13239)

(assert (=> b!457106 (= lt!206831 lt!206829)))

(declare-fun lt!206832 () (_ BitVec 64))

(declare-fun lt!206826 () ListLongMap!7045)

(declare-fun lt!206830 () (_ BitVec 64))

(declare-fun lt!206828 () V!17493)

(assert (=> b!457106 (not (contains!2502 (+!1558 lt!206826 (tuple2!8119 lt!206830 lt!206828)) lt!206832))))

(assert (=> b!457106 (= lt!206829 (addStillNotContains!149 lt!206826 lt!206830 lt!206828 lt!206832))))

(assert (=> b!457106 (= lt!206832 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!457106 (= lt!206828 (get!6708 (select (arr!13616 lt!206739) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!870 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!457106 (= lt!206830 (select (arr!13615 lt!206745) (bvadd #b00000000000000000000000000000001 from!863)))))

(declare-fun call!30097 () ListLongMap!7045)

(assert (=> b!457106 (= lt!206826 call!30097)))

(declare-fun e!266988 () ListLongMap!7045)

(assert (=> b!457106 (= e!266988 (+!1558 call!30097 (tuple2!8119 (select (arr!13615 lt!206745) (bvadd #b00000000000000000000000000000001 from!863)) (get!6708 (select (arr!13616 lt!206739) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!870 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!457107 () Bool)

(declare-fun e!266984 () ListLongMap!7045)

(assert (=> b!457107 (= e!266984 e!266988)))

(declare-fun c!56288 () Bool)

(assert (=> b!457107 (= c!56288 (validKeyInArray!0 (select (arr!13615 lt!206745) (bvadd #b00000000000000000000000000000001 from!863))))))

(declare-fun b!457108 () Bool)

(declare-fun res!272996 () Bool)

(declare-fun e!266989 () Bool)

(assert (=> b!457108 (=> (not res!272996) (not e!266989))))

(declare-fun lt!206827 () ListLongMap!7045)

(assert (=> b!457108 (= res!272996 (not (contains!2502 lt!206827 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!457109 () Bool)

(assert (=> b!457109 (= e!266984 (ListLongMap!7046 Nil!8218))))

(declare-fun d!74547 () Bool)

(assert (=> d!74547 e!266989))

(declare-fun res!272995 () Bool)

(assert (=> d!74547 (=> (not res!272995) (not e!266989))))

(assert (=> d!74547 (= res!272995 (not (contains!2502 lt!206827 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74547 (= lt!206827 e!266984)))

(declare-fun c!56290 () Bool)

(assert (=> d!74547 (= c!56290 (bvsge (bvadd #b00000000000000000000000000000001 from!863) (size!13967 lt!206745)))))

(assert (=> d!74547 (validMask!0 mask!1025)))

(assert (=> d!74547 (= (getCurrentListMapNoExtraKeys!1713 lt!206745 lt!206739 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!206827)))

(declare-fun b!457110 () Bool)

(declare-fun e!266987 () Bool)

(assert (=> b!457110 (= e!266987 (= lt!206827 (getCurrentListMapNoExtraKeys!1713 lt!206745 lt!206739 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!457111 () Bool)

(declare-fun e!266990 () Bool)

(assert (=> b!457111 (= e!266990 e!266987)))

(declare-fun c!56291 () Bool)

(assert (=> b!457111 (= c!56291 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13967 lt!206745)))))

(declare-fun b!457112 () Bool)

(assert (=> b!457112 (= e!266989 e!266990)))

(declare-fun c!56289 () Bool)

(declare-fun e!266986 () Bool)

(assert (=> b!457112 (= c!56289 e!266986)))

(declare-fun res!272993 () Bool)

(assert (=> b!457112 (=> (not res!272993) (not e!266986))))

(assert (=> b!457112 (= res!272993 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13967 lt!206745)))))

(declare-fun bm!30094 () Bool)

(assert (=> bm!30094 (= call!30097 (getCurrentListMapNoExtraKeys!1713 lt!206745 lt!206739 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!457113 () Bool)

(assert (=> b!457113 (= e!266987 (isEmpty!566 lt!206827))))

(declare-fun b!457114 () Bool)

(assert (=> b!457114 (= e!266986 (validKeyInArray!0 (select (arr!13615 lt!206745) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!457114 (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))

(declare-fun b!457115 () Bool)

(assert (=> b!457115 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13967 lt!206745)))))

(assert (=> b!457115 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13968 lt!206739)))))

(declare-fun e!266985 () Bool)

(assert (=> b!457115 (= e!266985 (= (apply!314 lt!206827 (select (arr!13615 lt!206745) (bvadd #b00000000000000000000000000000001 from!863))) (get!6708 (select (arr!13616 lt!206739) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!870 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!457116 () Bool)

(assert (=> b!457116 (= e!266990 e!266985)))

(assert (=> b!457116 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13967 lt!206745)))))

(declare-fun res!272994 () Bool)

(assert (=> b!457116 (= res!272994 (contains!2502 lt!206827 (select (arr!13615 lt!206745) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!457116 (=> (not res!272994) (not e!266985))))

(declare-fun b!457117 () Bool)

(assert (=> b!457117 (= e!266988 call!30097)))

(assert (= (and d!74547 c!56290) b!457109))

(assert (= (and d!74547 (not c!56290)) b!457107))

(assert (= (and b!457107 c!56288) b!457106))

(assert (= (and b!457107 (not c!56288)) b!457117))

(assert (= (or b!457106 b!457117) bm!30094))

(assert (= (and d!74547 res!272995) b!457108))

(assert (= (and b!457108 res!272996) b!457112))

(assert (= (and b!457112 res!272993) b!457114))

(assert (= (and b!457112 c!56289) b!457116))

(assert (= (and b!457112 (not c!56289)) b!457111))

(assert (= (and b!457116 res!272994) b!457115))

(assert (= (and b!457111 c!56291) b!457110))

(assert (= (and b!457111 (not c!56291)) b!457113))

(declare-fun b_lambda!9733 () Bool)

(assert (=> (not b_lambda!9733) (not b!457106)))

(assert (=> b!457106 t!14060))

(declare-fun b_and!19135 () Bool)

(assert (= b_and!19133 (and (=> t!14060 result!7125) b_and!19135)))

(declare-fun b_lambda!9735 () Bool)

(assert (=> (not b_lambda!9735) (not b!457115)))

(assert (=> b!457115 t!14060))

(declare-fun b_and!19137 () Bool)

(assert (= b_and!19135 (and (=> t!14060 result!7125) b_and!19137)))

(declare-fun m!440527 () Bool)

(assert (=> b!457113 m!440527))

(declare-fun m!440529 () Bool)

(assert (=> d!74547 m!440529))

(assert (=> d!74547 m!440329))

(declare-fun m!440531 () Bool)

(assert (=> b!457107 m!440531))

(assert (=> b!457107 m!440531))

(declare-fun m!440533 () Bool)

(assert (=> b!457107 m!440533))

(assert (=> b!457116 m!440531))

(assert (=> b!457116 m!440531))

(declare-fun m!440535 () Bool)

(assert (=> b!457116 m!440535))

(declare-fun m!440537 () Bool)

(assert (=> b!457110 m!440537))

(declare-fun m!440539 () Bool)

(assert (=> b!457106 m!440539))

(declare-fun m!440541 () Bool)

(assert (=> b!457106 m!440541))

(assert (=> b!457106 m!440339))

(declare-fun m!440543 () Bool)

(assert (=> b!457106 m!440543))

(assert (=> b!457106 m!440531))

(declare-fun m!440545 () Bool)

(assert (=> b!457106 m!440545))

(declare-fun m!440547 () Bool)

(assert (=> b!457106 m!440547))

(assert (=> b!457106 m!440539))

(assert (=> b!457106 m!440545))

(assert (=> b!457106 m!440339))

(declare-fun m!440549 () Bool)

(assert (=> b!457106 m!440549))

(declare-fun m!440551 () Bool)

(assert (=> b!457108 m!440551))

(assert (=> b!457114 m!440531))

(assert (=> b!457114 m!440531))

(assert (=> b!457114 m!440533))

(assert (=> b!457115 m!440339))

(assert (=> b!457115 m!440545))

(assert (=> b!457115 m!440339))

(assert (=> b!457115 m!440549))

(assert (=> b!457115 m!440531))

(assert (=> b!457115 m!440545))

(assert (=> b!457115 m!440531))

(declare-fun m!440553 () Bool)

(assert (=> b!457115 m!440553))

(assert (=> bm!30094 m!440537))

(assert (=> b!456967 d!74547))

(declare-fun d!74549 () Bool)

(assert (=> d!74549 (= (validKeyInArray!0 (select (arr!13615 _keys!709) from!863)) (and (not (= (select (arr!13615 _keys!709) from!863) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!13615 _keys!709) from!863) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!456967 d!74549))

(declare-fun b!457124 () Bool)

(declare-fun e!266995 () Bool)

(declare-fun call!30102 () ListLongMap!7045)

(declare-fun call!30103 () ListLongMap!7045)

(assert (=> b!457124 (= e!266995 (= call!30102 call!30103))))

(declare-fun d!74551 () Bool)

(declare-fun e!266996 () Bool)

(assert (=> d!74551 e!266996))

(declare-fun res!272999 () Bool)

(assert (=> d!74551 (=> (not res!272999) (not e!266996))))

(assert (=> d!74551 (= res!272999 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563)) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13967 _keys!709)))) (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563)) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13968 _values!549)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13967 _keys!709)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13968 _values!549))))))))

(declare-fun lt!206835 () Unit!13239)

(declare-fun choose!1339 (array!28349 array!28351 (_ BitVec 32) (_ BitVec 32) V!17493 V!17493 (_ BitVec 32) (_ BitVec 64) V!17493 (_ BitVec 32) Int) Unit!13239)

(assert (=> d!74551 (= lt!206835 (choose!1339 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> d!74551 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!13967 _keys!709)))))

(assert (=> d!74551 (= (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!722 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!206835)))

(declare-fun b!457125 () Bool)

(assert (=> b!457125 (= e!266995 (= call!30102 (+!1558 call!30103 (tuple2!8119 k0!794 v!412))))))

(declare-fun bm!30099 () Bool)

(assert (=> bm!30099 (= call!30103 (getCurrentListMapNoExtraKeys!1713 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!30100 () Bool)

(assert (=> bm!30100 (= call!30102 (getCurrentListMapNoExtraKeys!1713 (array!28350 (store (arr!13615 _keys!709) i!563 k0!794) (size!13967 _keys!709)) (array!28352 (store (arr!13616 _values!549) i!563 (ValueCellFull!5802 v!412)) (size!13968 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!457126 () Bool)

(assert (=> b!457126 (= e!266996 e!266995)))

(declare-fun c!56294 () Bool)

(assert (=> b!457126 (= c!56294 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(assert (= (and d!74551 res!272999) b!457126))

(assert (= (and b!457126 c!56294) b!457125))

(assert (= (and b!457126 (not c!56294)) b!457124))

(assert (= (or b!457125 b!457124) bm!30099))

(assert (= (or b!457125 b!457124) bm!30100))

(declare-fun m!440555 () Bool)

(assert (=> d!74551 m!440555))

(declare-fun m!440557 () Bool)

(assert (=> b!457125 m!440557))

(assert (=> bm!30099 m!440369))

(assert (=> bm!30100 m!440365))

(assert (=> bm!30100 m!440357))

(declare-fun m!440559 () Bool)

(assert (=> bm!30100 m!440559))

(assert (=> b!456967 d!74551))

(declare-fun d!74553 () Bool)

(assert (=> d!74553 (= (validMask!0 mask!1025) (and (or (= mask!1025 #b00000000000000000000000000000111) (= mask!1025 #b00000000000000000000000000001111) (= mask!1025 #b00000000000000000000000000011111) (= mask!1025 #b00000000000000000000000000111111) (= mask!1025 #b00000000000000000000000001111111) (= mask!1025 #b00000000000000000000000011111111) (= mask!1025 #b00000000000000000000000111111111) (= mask!1025 #b00000000000000000000001111111111) (= mask!1025 #b00000000000000000000011111111111) (= mask!1025 #b00000000000000000000111111111111) (= mask!1025 #b00000000000000000001111111111111) (= mask!1025 #b00000000000000000011111111111111) (= mask!1025 #b00000000000000000111111111111111) (= mask!1025 #b00000000000000001111111111111111) (= mask!1025 #b00000000000000011111111111111111) (= mask!1025 #b00000000000000111111111111111111) (= mask!1025 #b00000000000001111111111111111111) (= mask!1025 #b00000000000011111111111111111111) (= mask!1025 #b00000000000111111111111111111111) (= mask!1025 #b00000000001111111111111111111111) (= mask!1025 #b00000000011111111111111111111111) (= mask!1025 #b00000000111111111111111111111111) (= mask!1025 #b00000001111111111111111111111111) (= mask!1025 #b00000011111111111111111111111111) (= mask!1025 #b00000111111111111111111111111111) (= mask!1025 #b00001111111111111111111111111111) (= mask!1025 #b00011111111111111111111111111111) (= mask!1025 #b00111111111111111111111111111111)) (bvsle mask!1025 #b00111111111111111111111111111111)))))

(assert (=> b!456963 d!74553))

(declare-fun d!74555 () Bool)

(declare-fun res!273001 () Bool)

(declare-fun e!266999 () Bool)

(assert (=> d!74555 (=> res!273001 e!266999)))

(assert (=> d!74555 (= res!273001 (bvsge #b00000000000000000000000000000000 (size!13967 lt!206745)))))

(assert (=> d!74555 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206745 mask!1025) e!266999)))

(declare-fun bm!30101 () Bool)

(declare-fun call!30104 () Bool)

(assert (=> bm!30101 (= call!30104 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!206745 mask!1025))))

(declare-fun b!457127 () Bool)

(declare-fun e!266998 () Bool)

(declare-fun e!266997 () Bool)

(assert (=> b!457127 (= e!266998 e!266997)))

(declare-fun lt!206836 () (_ BitVec 64))

(assert (=> b!457127 (= lt!206836 (select (arr!13615 lt!206745) #b00000000000000000000000000000000))))

(declare-fun lt!206838 () Unit!13239)

(assert (=> b!457127 (= lt!206838 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!206745 lt!206836 #b00000000000000000000000000000000))))

(assert (=> b!457127 (arrayContainsKey!0 lt!206745 lt!206836 #b00000000000000000000000000000000)))

(declare-fun lt!206837 () Unit!13239)

(assert (=> b!457127 (= lt!206837 lt!206838)))

(declare-fun res!273000 () Bool)

(assert (=> b!457127 (= res!273000 (= (seekEntryOrOpen!0 (select (arr!13615 lt!206745) #b00000000000000000000000000000000) lt!206745 mask!1025) (Found!3521 #b00000000000000000000000000000000)))))

(assert (=> b!457127 (=> (not res!273000) (not e!266997))))

(declare-fun b!457128 () Bool)

(assert (=> b!457128 (= e!266997 call!30104)))

(declare-fun b!457129 () Bool)

(assert (=> b!457129 (= e!266998 call!30104)))

(declare-fun b!457130 () Bool)

(assert (=> b!457130 (= e!266999 e!266998)))

(declare-fun c!56295 () Bool)

(assert (=> b!457130 (= c!56295 (validKeyInArray!0 (select (arr!13615 lt!206745) #b00000000000000000000000000000000)))))

(assert (= (and d!74555 (not res!273001)) b!457130))

(assert (= (and b!457130 c!56295) b!457127))

(assert (= (and b!457130 (not c!56295)) b!457129))

(assert (= (and b!457127 res!273000) b!457128))

(assert (= (or b!457128 b!457129) bm!30101))

(declare-fun m!440561 () Bool)

(assert (=> bm!30101 m!440561))

(declare-fun m!440563 () Bool)

(assert (=> b!457127 m!440563))

(declare-fun m!440565 () Bool)

(assert (=> b!457127 m!440565))

(declare-fun m!440567 () Bool)

(assert (=> b!457127 m!440567))

(assert (=> b!457127 m!440563))

(declare-fun m!440569 () Bool)

(assert (=> b!457127 m!440569))

(assert (=> b!457130 m!440563))

(assert (=> b!457130 m!440563))

(declare-fun m!440571 () Bool)

(assert (=> b!457130 m!440571))

(assert (=> b!456972 d!74555))

(declare-fun b!457141 () Bool)

(declare-fun e!267009 () Bool)

(declare-fun call!30107 () Bool)

(assert (=> b!457141 (= e!267009 call!30107)))

(declare-fun b!457142 () Bool)

(assert (=> b!457142 (= e!267009 call!30107)))

(declare-fun b!457143 () Bool)

(declare-fun e!267010 () Bool)

(declare-fun e!267008 () Bool)

(assert (=> b!457143 (= e!267010 e!267008)))

(declare-fun res!273009 () Bool)

(assert (=> b!457143 (=> (not res!273009) (not e!267008))))

(declare-fun e!267011 () Bool)

(assert (=> b!457143 (= res!273009 (not e!267011))))

(declare-fun res!273010 () Bool)

(assert (=> b!457143 (=> (not res!273010) (not e!267011))))

(assert (=> b!457143 (= res!273010 (validKeyInArray!0 (select (arr!13615 lt!206745) #b00000000000000000000000000000000)))))

(declare-fun b!457144 () Bool)

(assert (=> b!457144 (= e!267008 e!267009)))

(declare-fun c!56298 () Bool)

(assert (=> b!457144 (= c!56298 (validKeyInArray!0 (select (arr!13615 lt!206745) #b00000000000000000000000000000000)))))

(declare-fun b!457145 () Bool)

(declare-fun contains!2504 (List!8222 (_ BitVec 64)) Bool)

(assert (=> b!457145 (= e!267011 (contains!2504 Nil!8219 (select (arr!13615 lt!206745) #b00000000000000000000000000000000)))))

(declare-fun d!74557 () Bool)

(declare-fun res!273008 () Bool)

(assert (=> d!74557 (=> res!273008 e!267010)))

(assert (=> d!74557 (= res!273008 (bvsge #b00000000000000000000000000000000 (size!13967 lt!206745)))))

(assert (=> d!74557 (= (arrayNoDuplicates!0 lt!206745 #b00000000000000000000000000000000 Nil!8219) e!267010)))

(declare-fun bm!30104 () Bool)

(assert (=> bm!30104 (= call!30107 (arrayNoDuplicates!0 lt!206745 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!56298 (Cons!8218 (select (arr!13615 lt!206745) #b00000000000000000000000000000000) Nil!8219) Nil!8219)))))

(assert (= (and d!74557 (not res!273008)) b!457143))

(assert (= (and b!457143 res!273010) b!457145))

(assert (= (and b!457143 res!273009) b!457144))

(assert (= (and b!457144 c!56298) b!457141))

(assert (= (and b!457144 (not c!56298)) b!457142))

(assert (= (or b!457141 b!457142) bm!30104))

(assert (=> b!457143 m!440563))

(assert (=> b!457143 m!440563))

(assert (=> b!457143 m!440571))

(assert (=> b!457144 m!440563))

(assert (=> b!457144 m!440563))

(assert (=> b!457144 m!440571))

(assert (=> b!457145 m!440563))

(assert (=> b!457145 m!440563))

(declare-fun m!440573 () Bool)

(assert (=> b!457145 m!440573))

(assert (=> bm!30104 m!440563))

(declare-fun m!440575 () Bool)

(assert (=> bm!30104 m!440575))

(assert (=> b!456966 d!74557))

(declare-fun d!74559 () Bool)

(assert (=> d!74559 (= (array_inv!9850 _values!549) (bvsge (size!13968 _values!549) #b00000000000000000000000000000000))))

(assert (=> start!41026 d!74559))

(declare-fun d!74561 () Bool)

(assert (=> d!74561 (= (array_inv!9851 _keys!709) (bvsge (size!13967 _keys!709) #b00000000000000000000000000000000))))

(assert (=> start!41026 d!74561))

(declare-fun d!74563 () Bool)

(declare-fun e!267012 () Bool)

(assert (=> d!74563 e!267012))

(declare-fun res!273011 () Bool)

(assert (=> d!74563 (=> (not res!273011) (not e!267012))))

(declare-fun lt!206841 () ListLongMap!7045)

(assert (=> d!74563 (= res!273011 (contains!2502 lt!206841 (_1!4069 (tuple2!8119 (select (arr!13615 _keys!709) from!863) (get!6708 (select (arr!13616 _values!549) from!863) (dynLambda!870 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!206842 () List!8221)

(assert (=> d!74563 (= lt!206841 (ListLongMap!7046 lt!206842))))

(declare-fun lt!206840 () Unit!13239)

(declare-fun lt!206839 () Unit!13239)

(assert (=> d!74563 (= lt!206840 lt!206839)))

(assert (=> d!74563 (= (getValueByKey!370 lt!206842 (_1!4069 (tuple2!8119 (select (arr!13615 _keys!709) from!863) (get!6708 (select (arr!13616 _values!549) from!863) (dynLambda!870 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!375 (_2!4069 (tuple2!8119 (select (arr!13615 _keys!709) from!863) (get!6708 (select (arr!13616 _values!549) from!863) (dynLambda!870 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!74563 (= lt!206839 (lemmaContainsTupThenGetReturnValue!194 lt!206842 (_1!4069 (tuple2!8119 (select (arr!13615 _keys!709) from!863) (get!6708 (select (arr!13616 _values!549) from!863) (dynLambda!870 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!4069 (tuple2!8119 (select (arr!13615 _keys!709) from!863) (get!6708 (select (arr!13616 _values!549) from!863) (dynLambda!870 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!74563 (= lt!206842 (insertStrictlySorted!196 (toList!3538 lt!206738) (_1!4069 (tuple2!8119 (select (arr!13615 _keys!709) from!863) (get!6708 (select (arr!13616 _values!549) from!863) (dynLambda!870 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!4069 (tuple2!8119 (select (arr!13615 _keys!709) from!863) (get!6708 (select (arr!13616 _values!549) from!863) (dynLambda!870 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!74563 (= (+!1558 lt!206738 (tuple2!8119 (select (arr!13615 _keys!709) from!863) (get!6708 (select (arr!13616 _values!549) from!863) (dynLambda!870 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!206841)))

(declare-fun b!457146 () Bool)

(declare-fun res!273012 () Bool)

(assert (=> b!457146 (=> (not res!273012) (not e!267012))))

(assert (=> b!457146 (= res!273012 (= (getValueByKey!370 (toList!3538 lt!206841) (_1!4069 (tuple2!8119 (select (arr!13615 _keys!709) from!863) (get!6708 (select (arr!13616 _values!549) from!863) (dynLambda!870 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!375 (_2!4069 (tuple2!8119 (select (arr!13615 _keys!709) from!863) (get!6708 (select (arr!13616 _values!549) from!863) (dynLambda!870 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!457147 () Bool)

(assert (=> b!457147 (= e!267012 (contains!2503 (toList!3538 lt!206841) (tuple2!8119 (select (arr!13615 _keys!709) from!863) (get!6708 (select (arr!13616 _values!549) from!863) (dynLambda!870 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!74563 res!273011) b!457146))

(assert (= (and b!457146 res!273012) b!457147))

(declare-fun m!440577 () Bool)

(assert (=> d!74563 m!440577))

(declare-fun m!440579 () Bool)

(assert (=> d!74563 m!440579))

(declare-fun m!440581 () Bool)

(assert (=> d!74563 m!440581))

(declare-fun m!440583 () Bool)

(assert (=> d!74563 m!440583))

(declare-fun m!440585 () Bool)

(assert (=> b!457146 m!440585))

(declare-fun m!440587 () Bool)

(assert (=> b!457147 m!440587))

(assert (=> b!456970 d!74563))

(declare-fun d!74565 () Bool)

(declare-fun c!56301 () Bool)

(assert (=> d!74565 (= c!56301 ((_ is ValueCellFull!5802) (select (arr!13616 _values!549) from!863)))))

(declare-fun e!267015 () V!17493)

(assert (=> d!74565 (= (get!6708 (select (arr!13616 _values!549) from!863) (dynLambda!870 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)) e!267015)))

(declare-fun b!457152 () Bool)

(declare-fun get!6709 (ValueCell!5802 V!17493) V!17493)

(assert (=> b!457152 (= e!267015 (get!6709 (select (arr!13616 _values!549) from!863) (dynLambda!870 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!457153 () Bool)

(declare-fun get!6710 (ValueCell!5802 V!17493) V!17493)

(assert (=> b!457153 (= e!267015 (get!6710 (select (arr!13616 _values!549) from!863) (dynLambda!870 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!74565 c!56301) b!457152))

(assert (= (and d!74565 (not c!56301)) b!457153))

(assert (=> b!457152 m!440341))

(assert (=> b!457152 m!440339))

(declare-fun m!440589 () Bool)

(assert (=> b!457152 m!440589))

(assert (=> b!457153 m!440341))

(assert (=> b!457153 m!440339))

(declare-fun m!440591 () Bool)

(assert (=> b!457153 m!440591))

(assert (=> b!456970 d!74565))

(declare-fun d!74567 () Bool)

(declare-fun res!273017 () Bool)

(declare-fun e!267020 () Bool)

(assert (=> d!74567 (=> res!273017 e!267020)))

(assert (=> d!74567 (= res!273017 (= (select (arr!13615 _keys!709) #b00000000000000000000000000000000) k0!794))))

(assert (=> d!74567 (= (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000) e!267020)))

(declare-fun b!457158 () Bool)

(declare-fun e!267021 () Bool)

(assert (=> b!457158 (= e!267020 e!267021)))

(declare-fun res!273018 () Bool)

(assert (=> b!457158 (=> (not res!273018) (not e!267021))))

(assert (=> b!457158 (= res!273018 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!13967 _keys!709)))))

(declare-fun b!457159 () Bool)

(assert (=> b!457159 (= e!267021 (arrayContainsKey!0 _keys!709 k0!794 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!74567 (not res!273017)) b!457158))

(assert (= (and b!457158 res!273018) b!457159))

(assert (=> d!74567 m!440429))

(declare-fun m!440593 () Bool)

(assert (=> b!457159 m!440593))

(assert (=> b!456969 d!74567))

(declare-fun b!457160 () Bool)

(declare-fun e!267023 () Bool)

(declare-fun call!30108 () Bool)

(assert (=> b!457160 (= e!267023 call!30108)))

(declare-fun b!457161 () Bool)

(assert (=> b!457161 (= e!267023 call!30108)))

(declare-fun b!457162 () Bool)

(declare-fun e!267024 () Bool)

(declare-fun e!267022 () Bool)

(assert (=> b!457162 (= e!267024 e!267022)))

(declare-fun res!273020 () Bool)

(assert (=> b!457162 (=> (not res!273020) (not e!267022))))

(declare-fun e!267025 () Bool)

(assert (=> b!457162 (= res!273020 (not e!267025))))

(declare-fun res!273021 () Bool)

(assert (=> b!457162 (=> (not res!273021) (not e!267025))))

(assert (=> b!457162 (= res!273021 (validKeyInArray!0 (select (arr!13615 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!457163 () Bool)

(assert (=> b!457163 (= e!267022 e!267023)))

(declare-fun c!56302 () Bool)

(assert (=> b!457163 (= c!56302 (validKeyInArray!0 (select (arr!13615 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!457164 () Bool)

(assert (=> b!457164 (= e!267025 (contains!2504 Nil!8219 (select (arr!13615 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun d!74569 () Bool)

(declare-fun res!273019 () Bool)

(assert (=> d!74569 (=> res!273019 e!267024)))

(assert (=> d!74569 (= res!273019 (bvsge #b00000000000000000000000000000000 (size!13967 _keys!709)))))

(assert (=> d!74569 (= (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8219) e!267024)))

(declare-fun bm!30105 () Bool)

(assert (=> bm!30105 (= call!30108 (arrayNoDuplicates!0 _keys!709 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!56302 (Cons!8218 (select (arr!13615 _keys!709) #b00000000000000000000000000000000) Nil!8219) Nil!8219)))))

(assert (= (and d!74569 (not res!273019)) b!457162))

(assert (= (and b!457162 res!273021) b!457164))

(assert (= (and b!457162 res!273020) b!457163))

(assert (= (and b!457163 c!56302) b!457160))

(assert (= (and b!457163 (not c!56302)) b!457161))

(assert (= (or b!457160 b!457161) bm!30105))

(assert (=> b!457162 m!440429))

(assert (=> b!457162 m!440429))

(assert (=> b!457162 m!440437))

(assert (=> b!457163 m!440429))

(assert (=> b!457163 m!440429))

(assert (=> b!457163 m!440437))

(assert (=> b!457164 m!440429))

(assert (=> b!457164 m!440429))

(declare-fun m!440595 () Bool)

(assert (=> b!457164 m!440595))

(assert (=> bm!30105 m!440429))

(declare-fun m!440597 () Bool)

(assert (=> bm!30105 m!440597))

(assert (=> b!456965 d!74569))

(declare-fun b!457172 () Bool)

(declare-fun e!267031 () Bool)

(assert (=> b!457172 (= e!267031 tp_is_empty!12291)))

(declare-fun condMapEmpty!20083 () Bool)

(declare-fun mapDefault!20083 () ValueCell!5802)

(assert (=> mapNonEmpty!20077 (= condMapEmpty!20083 (= mapRest!20077 ((as const (Array (_ BitVec 32) ValueCell!5802)) mapDefault!20083)))))

(declare-fun mapRes!20083 () Bool)

(assert (=> mapNonEmpty!20077 (= tp!38685 (and e!267031 mapRes!20083))))

(declare-fun mapNonEmpty!20083 () Bool)

(declare-fun tp!38695 () Bool)

(declare-fun e!267030 () Bool)

(assert (=> mapNonEmpty!20083 (= mapRes!20083 (and tp!38695 e!267030))))

(declare-fun mapKey!20083 () (_ BitVec 32))

(declare-fun mapValue!20083 () ValueCell!5802)

(declare-fun mapRest!20083 () (Array (_ BitVec 32) ValueCell!5802))

(assert (=> mapNonEmpty!20083 (= mapRest!20077 (store mapRest!20083 mapKey!20083 mapValue!20083))))

(declare-fun b!457171 () Bool)

(assert (=> b!457171 (= e!267030 tp_is_empty!12291)))

(declare-fun mapIsEmpty!20083 () Bool)

(assert (=> mapIsEmpty!20083 mapRes!20083))

(assert (= (and mapNonEmpty!20077 condMapEmpty!20083) mapIsEmpty!20083))

(assert (= (and mapNonEmpty!20077 (not condMapEmpty!20083)) mapNonEmpty!20083))

(assert (= (and mapNonEmpty!20083 ((_ is ValueCellFull!5802) mapValue!20083)) b!457171))

(assert (= (and mapNonEmpty!20077 ((_ is ValueCellFull!5802) mapDefault!20083)) b!457172))

(declare-fun m!440599 () Bool)

(assert (=> mapNonEmpty!20083 m!440599))

(declare-fun b_lambda!9737 () Bool)

(assert (= b_lambda!9721 (or (and start!41026 b_free!10953) b_lambda!9737)))

(declare-fun b_lambda!9739 () Bool)

(assert (= b_lambda!9725 (or (and start!41026 b_free!10953) b_lambda!9739)))

(declare-fun b_lambda!9741 () Bool)

(assert (= b_lambda!9733 (or (and start!41026 b_free!10953) b_lambda!9741)))

(declare-fun b_lambda!9743 () Bool)

(assert (= b_lambda!9735 (or (and start!41026 b_free!10953) b_lambda!9743)))

(declare-fun b_lambda!9745 () Bool)

(assert (= b_lambda!9723 (or (and start!41026 b_free!10953) b_lambda!9745)))

(declare-fun b_lambda!9747 () Bool)

(assert (= b_lambda!9731 (or (and start!41026 b_free!10953) b_lambda!9747)))

(declare-fun b_lambda!9749 () Bool)

(assert (= b_lambda!9729 (or (and start!41026 b_free!10953) b_lambda!9749)))

(declare-fun b_lambda!9751 () Bool)

(assert (= b_lambda!9727 (or (and start!41026 b_free!10953) b_lambda!9751)))

(check-sat (not b_lambda!9739) (not b!457130) (not b!457097) (not b_lambda!9741) (not b!457113) tp_is_empty!12291 (not b!457110) (not b_lambda!9743) (not b!457036) (not b!457144) (not b!457115) (not b!457162) (not b!457076) (not b!457164) (not b_lambda!9749) (not d!74541) (not b!457114) (not b!457065) (not b!457039) b_and!19137 (not b!457085) (not b_next!10953) (not b!457146) (not b!457088) (not b!457147) (not bm!30101) (not b!457090) (not b!457095) (not d!74547) (not b!457068) (not d!74539) (not d!74545) (not b!457072) (not b!457159) (not b!457066) (not b_lambda!9719) (not b!457116) (not bm!30092) (not b!457108) (not b!457153) (not bm!30104) (not b!457084) (not mapNonEmpty!20083) (not b!457145) (not b!457077) (not b!457064) (not b!457078) (not d!74563) (not b!457086) (not b!457098) (not b_lambda!9745) (not b!457125) (not b_lambda!9737) (not bm!30099) (not b_lambda!9751) (not bm!30100) (not b!457127) (not b!457071) (not b!457096) (not bm!30105) (not b!457152) (not b!457083) (not bm!30093) (not b!457092) (not bm!30094) (not bm!30088) (not b!457106) (not bm!30091) (not d!74543) (not b!457163) (not b_lambda!9747) (not b!457107) (not b!457104) (not b!457074) (not b!457089) (not b!457073) (not b!457105) (not d!74551) (not b!457143) (not b!457080))
(check-sat b_and!19137 (not b_next!10953))
