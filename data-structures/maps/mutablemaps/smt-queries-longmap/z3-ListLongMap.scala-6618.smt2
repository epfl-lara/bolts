; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83688 () Bool)

(assert start!83688)

(declare-fun b!977007 () Bool)

(declare-fun res!654035 () Bool)

(declare-fun e!550751 () Bool)

(assert (=> b!977007 (=> (not res!654035) (not e!550751))))

(declare-datatypes ((array!60985 0))(
  ( (array!60986 (arr!29348 (Array (_ BitVec 32) (_ BitVec 64))) (size!29828 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!60985)

(assert (=> b!977007 (= res!654035 (and (bvsle #b00000000000000000000000000000000 (size!29828 _keys!1544)) (bvslt (size!29828 _keys!1544) #b01111111111111111111111111111111)))))

(declare-fun b!977008 () Bool)

(declare-fun e!550753 () Bool)

(declare-fun tp_is_empty!22485 () Bool)

(assert (=> b!977008 (= e!550753 tp_is_empty!22485)))

(declare-fun mapIsEmpty!35750 () Bool)

(declare-fun mapRes!35750 () Bool)

(assert (=> mapIsEmpty!35750 mapRes!35750))

(declare-fun b!977009 () Bool)

(declare-datatypes ((List!20489 0))(
  ( (Nil!20486) (Cons!20485 (h!21647 (_ BitVec 64)) (t!29012 List!20489)) )
))
(declare-fun noDuplicate!1382 (List!20489) Bool)

(assert (=> b!977009 (= e!550751 (not (noDuplicate!1382 Nil!20486)))))

(declare-fun b!977010 () Bool)

(declare-fun e!550752 () Bool)

(assert (=> b!977010 (= e!550752 tp_is_empty!22485)))

(declare-fun mapNonEmpty!35750 () Bool)

(declare-fun tp!68003 () Bool)

(assert (=> mapNonEmpty!35750 (= mapRes!35750 (and tp!68003 e!550753))))

(declare-datatypes ((V!34963 0))(
  ( (V!34964 (val!11293 Int)) )
))
(declare-datatypes ((ValueCell!10761 0))(
  ( (ValueCellFull!10761 (v!13854 V!34963)) (EmptyCell!10761) )
))
(declare-datatypes ((array!60987 0))(
  ( (array!60988 (arr!29349 (Array (_ BitVec 32) ValueCell!10761)) (size!29829 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!60987)

(declare-fun mapValue!35750 () ValueCell!10761)

(declare-fun mapKey!35750 () (_ BitVec 32))

(declare-fun mapRest!35750 () (Array (_ BitVec 32) ValueCell!10761))

(assert (=> mapNonEmpty!35750 (= (arr!29349 _values!1278) (store mapRest!35750 mapKey!35750 mapValue!35750))))

(declare-fun b!977011 () Bool)

(declare-fun res!654037 () Bool)

(assert (=> b!977011 (=> (not res!654037) (not e!550751))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!977011 (= res!654037 (and (= (size!29829 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29828 _keys!1544) (size!29829 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!977012 () Bool)

(declare-fun res!654036 () Bool)

(assert (=> b!977012 (=> (not res!654036) (not e!550751))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60985 (_ BitVec 32)) Bool)

(assert (=> b!977012 (= res!654036 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!977013 () Bool)

(declare-fun e!550754 () Bool)

(assert (=> b!977013 (= e!550754 (and e!550752 mapRes!35750))))

(declare-fun condMapEmpty!35750 () Bool)

(declare-fun mapDefault!35750 () ValueCell!10761)

(assert (=> b!977013 (= condMapEmpty!35750 (= (arr!29349 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10761)) mapDefault!35750)))))

(declare-fun res!654034 () Bool)

(assert (=> start!83688 (=> (not res!654034) (not e!550751))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83688 (= res!654034 (validMask!0 mask!1948))))

(assert (=> start!83688 e!550751))

(assert (=> start!83688 true))

(declare-fun array_inv!22593 (array!60987) Bool)

(assert (=> start!83688 (and (array_inv!22593 _values!1278) e!550754)))

(declare-fun array_inv!22594 (array!60985) Bool)

(assert (=> start!83688 (array_inv!22594 _keys!1544)))

(assert (= (and start!83688 res!654034) b!977011))

(assert (= (and b!977011 res!654037) b!977012))

(assert (= (and b!977012 res!654036) b!977007))

(assert (= (and b!977007 res!654035) b!977009))

(assert (= (and b!977013 condMapEmpty!35750) mapIsEmpty!35750))

(assert (= (and b!977013 (not condMapEmpty!35750)) mapNonEmpty!35750))

(get-info :version)

(assert (= (and mapNonEmpty!35750 ((_ is ValueCellFull!10761) mapValue!35750)) b!977008))

(assert (= (and b!977013 ((_ is ValueCellFull!10761) mapDefault!35750)) b!977010))

(assert (= start!83688 b!977013))

(declare-fun m!904477 () Bool)

(assert (=> b!977009 m!904477))

(declare-fun m!904479 () Bool)

(assert (=> mapNonEmpty!35750 m!904479))

(declare-fun m!904481 () Bool)

(assert (=> b!977012 m!904481))

(declare-fun m!904483 () Bool)

(assert (=> start!83688 m!904483))

(declare-fun m!904485 () Bool)

(assert (=> start!83688 m!904485))

(declare-fun m!904487 () Bool)

(assert (=> start!83688 m!904487))

(check-sat (not start!83688) (not mapNonEmpty!35750) (not b!977012) tp_is_empty!22485 (not b!977009))
(check-sat)
(get-model)

(declare-fun d!116567 () Bool)

(declare-fun res!654054 () Bool)

(declare-fun e!550775 () Bool)

(assert (=> d!116567 (=> res!654054 e!550775)))

(assert (=> d!116567 (= res!654054 ((_ is Nil!20486) Nil!20486))))

(assert (=> d!116567 (= (noDuplicate!1382 Nil!20486) e!550775)))

(declare-fun b!977039 () Bool)

(declare-fun e!550776 () Bool)

(assert (=> b!977039 (= e!550775 e!550776)))

(declare-fun res!654055 () Bool)

(assert (=> b!977039 (=> (not res!654055) (not e!550776))))

(declare-fun contains!5712 (List!20489 (_ BitVec 64)) Bool)

(assert (=> b!977039 (= res!654055 (not (contains!5712 (t!29012 Nil!20486) (h!21647 Nil!20486))))))

(declare-fun b!977040 () Bool)

(assert (=> b!977040 (= e!550776 (noDuplicate!1382 (t!29012 Nil!20486)))))

(assert (= (and d!116567 (not res!654054)) b!977039))

(assert (= (and b!977039 res!654055) b!977040))

(declare-fun m!904501 () Bool)

(assert (=> b!977039 m!904501))

(declare-fun m!904503 () Bool)

(assert (=> b!977040 m!904503))

(assert (=> b!977009 d!116567))

(declare-fun d!116569 () Bool)

(declare-fun res!654061 () Bool)

(declare-fun e!550785 () Bool)

(assert (=> d!116569 (=> res!654061 e!550785)))

(assert (=> d!116569 (= res!654061 (bvsge #b00000000000000000000000000000000 (size!29828 _keys!1544)))))

(assert (=> d!116569 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948) e!550785)))

(declare-fun bm!41787 () Bool)

(declare-fun call!41790 () Bool)

(assert (=> bm!41787 (= call!41790 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1544 mask!1948))))

(declare-fun b!977049 () Bool)

(declare-fun e!550784 () Bool)

(declare-fun e!550783 () Bool)

(assert (=> b!977049 (= e!550784 e!550783)))

(declare-fun lt!433379 () (_ BitVec 64))

(assert (=> b!977049 (= lt!433379 (select (arr!29348 _keys!1544) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32447 0))(
  ( (Unit!32448) )
))
(declare-fun lt!433380 () Unit!32447)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!60985 (_ BitVec 64) (_ BitVec 32)) Unit!32447)

(assert (=> b!977049 (= lt!433380 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1544 lt!433379 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!60985 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!977049 (arrayContainsKey!0 _keys!1544 lt!433379 #b00000000000000000000000000000000)))

(declare-fun lt!433378 () Unit!32447)

(assert (=> b!977049 (= lt!433378 lt!433380)))

(declare-fun res!654060 () Bool)

(declare-datatypes ((SeekEntryResult!9192 0))(
  ( (MissingZero!9192 (index!39138 (_ BitVec 32))) (Found!9192 (index!39139 (_ BitVec 32))) (Intermediate!9192 (undefined!10004 Bool) (index!39140 (_ BitVec 32)) (x!84536 (_ BitVec 32))) (Undefined!9192) (MissingVacant!9192 (index!39141 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!60985 (_ BitVec 32)) SeekEntryResult!9192)

(assert (=> b!977049 (= res!654060 (= (seekEntryOrOpen!0 (select (arr!29348 _keys!1544) #b00000000000000000000000000000000) _keys!1544 mask!1948) (Found!9192 #b00000000000000000000000000000000)))))

(assert (=> b!977049 (=> (not res!654060) (not e!550783))))

(declare-fun b!977050 () Bool)

(assert (=> b!977050 (= e!550783 call!41790)))

(declare-fun b!977051 () Bool)

(assert (=> b!977051 (= e!550784 call!41790)))

(declare-fun b!977052 () Bool)

(assert (=> b!977052 (= e!550785 e!550784)))

(declare-fun c!99937 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!977052 (= c!99937 (validKeyInArray!0 (select (arr!29348 _keys!1544) #b00000000000000000000000000000000)))))

(assert (= (and d!116569 (not res!654061)) b!977052))

(assert (= (and b!977052 c!99937) b!977049))

(assert (= (and b!977052 (not c!99937)) b!977051))

(assert (= (and b!977049 res!654060) b!977050))

(assert (= (or b!977050 b!977051) bm!41787))

(declare-fun m!904505 () Bool)

(assert (=> bm!41787 m!904505))

(declare-fun m!904507 () Bool)

(assert (=> b!977049 m!904507))

(declare-fun m!904509 () Bool)

(assert (=> b!977049 m!904509))

(declare-fun m!904511 () Bool)

(assert (=> b!977049 m!904511))

(assert (=> b!977049 m!904507))

(declare-fun m!904513 () Bool)

(assert (=> b!977049 m!904513))

(assert (=> b!977052 m!904507))

(assert (=> b!977052 m!904507))

(declare-fun m!904515 () Bool)

(assert (=> b!977052 m!904515))

(assert (=> b!977012 d!116569))

(declare-fun d!116571 () Bool)

(assert (=> d!116571 (= (validMask!0 mask!1948) (and (or (= mask!1948 #b00000000000000000000000000000111) (= mask!1948 #b00000000000000000000000000001111) (= mask!1948 #b00000000000000000000000000011111) (= mask!1948 #b00000000000000000000000000111111) (= mask!1948 #b00000000000000000000000001111111) (= mask!1948 #b00000000000000000000000011111111) (= mask!1948 #b00000000000000000000000111111111) (= mask!1948 #b00000000000000000000001111111111) (= mask!1948 #b00000000000000000000011111111111) (= mask!1948 #b00000000000000000000111111111111) (= mask!1948 #b00000000000000000001111111111111) (= mask!1948 #b00000000000000000011111111111111) (= mask!1948 #b00000000000000000111111111111111) (= mask!1948 #b00000000000000001111111111111111) (= mask!1948 #b00000000000000011111111111111111) (= mask!1948 #b00000000000000111111111111111111) (= mask!1948 #b00000000000001111111111111111111) (= mask!1948 #b00000000000011111111111111111111) (= mask!1948 #b00000000000111111111111111111111) (= mask!1948 #b00000000001111111111111111111111) (= mask!1948 #b00000000011111111111111111111111) (= mask!1948 #b00000000111111111111111111111111) (= mask!1948 #b00000001111111111111111111111111) (= mask!1948 #b00000011111111111111111111111111) (= mask!1948 #b00000111111111111111111111111111) (= mask!1948 #b00001111111111111111111111111111) (= mask!1948 #b00011111111111111111111111111111) (= mask!1948 #b00111111111111111111111111111111)) (bvsle mask!1948 #b00111111111111111111111111111111)))))

(assert (=> start!83688 d!116571))

(declare-fun d!116573 () Bool)

(assert (=> d!116573 (= (array_inv!22593 _values!1278) (bvsge (size!29829 _values!1278) #b00000000000000000000000000000000))))

(assert (=> start!83688 d!116573))

(declare-fun d!116575 () Bool)

(assert (=> d!116575 (= (array_inv!22594 _keys!1544) (bvsge (size!29828 _keys!1544) #b00000000000000000000000000000000))))

(assert (=> start!83688 d!116575))

(declare-fun mapNonEmpty!35756 () Bool)

(declare-fun mapRes!35756 () Bool)

(declare-fun tp!68009 () Bool)

(declare-fun e!550790 () Bool)

(assert (=> mapNonEmpty!35756 (= mapRes!35756 (and tp!68009 e!550790))))

(declare-fun mapRest!35756 () (Array (_ BitVec 32) ValueCell!10761))

(declare-fun mapValue!35756 () ValueCell!10761)

(declare-fun mapKey!35756 () (_ BitVec 32))

(assert (=> mapNonEmpty!35756 (= mapRest!35750 (store mapRest!35756 mapKey!35756 mapValue!35756))))

(declare-fun mapIsEmpty!35756 () Bool)

(assert (=> mapIsEmpty!35756 mapRes!35756))

(declare-fun b!977059 () Bool)

(assert (=> b!977059 (= e!550790 tp_is_empty!22485)))

(declare-fun condMapEmpty!35756 () Bool)

(declare-fun mapDefault!35756 () ValueCell!10761)

(assert (=> mapNonEmpty!35750 (= condMapEmpty!35756 (= mapRest!35750 ((as const (Array (_ BitVec 32) ValueCell!10761)) mapDefault!35756)))))

(declare-fun e!550791 () Bool)

(assert (=> mapNonEmpty!35750 (= tp!68003 (and e!550791 mapRes!35756))))

(declare-fun b!977060 () Bool)

(assert (=> b!977060 (= e!550791 tp_is_empty!22485)))

(assert (= (and mapNonEmpty!35750 condMapEmpty!35756) mapIsEmpty!35756))

(assert (= (and mapNonEmpty!35750 (not condMapEmpty!35756)) mapNonEmpty!35756))

(assert (= (and mapNonEmpty!35756 ((_ is ValueCellFull!10761) mapValue!35756)) b!977059))

(assert (= (and mapNonEmpty!35750 ((_ is ValueCellFull!10761) mapDefault!35756)) b!977060))

(declare-fun m!904517 () Bool)

(assert (=> mapNonEmpty!35756 m!904517))

(check-sat (not b!977049) tp_is_empty!22485 (not bm!41787) (not b!977052) (not b!977040) (not b!977039) (not mapNonEmpty!35756))
(check-sat)
