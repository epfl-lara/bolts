; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4288 () Bool)

(assert start!4288)

(declare-fun b_free!1155 () Bool)

(declare-fun b_next!1155 () Bool)

(assert (=> start!4288 (= b_free!1155 (not b_next!1155))))

(declare-fun tp!4891 () Bool)

(declare-fun b_and!1971 () Bool)

(assert (=> start!4288 (= tp!4891 b_and!1971)))

(declare-fun mapIsEmpty!1798 () Bool)

(declare-fun mapRes!1798 () Bool)

(assert (=> mapIsEmpty!1798 mapRes!1798))

(declare-fun b!32977 () Bool)

(declare-fun e!20950 () Bool)

(declare-fun tp_is_empty!1509 () Bool)

(assert (=> b!32977 (= e!20950 tp_is_empty!1509)))

(declare-fun b!32978 () Bool)

(declare-fun res!20034 () Bool)

(declare-fun e!20945 () Bool)

(assert (=> b!32978 (=> (not res!20034) (not e!20945))))

(declare-datatypes ((array!2227 0))(
  ( (array!2228 (arr!1065 (Array (_ BitVec 32) (_ BitVec 64))) (size!1166 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2227)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2227 (_ BitVec 32)) Bool)

(assert (=> b!32978 (= res!20034 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!32979 () Bool)

(declare-fun res!20035 () Bool)

(declare-fun e!20946 () Bool)

(assert (=> b!32979 (=> (not res!20035) (not e!20946))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!2227 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!32979 (= res!20035 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!32980 () Bool)

(declare-fun res!20030 () Bool)

(assert (=> b!32980 (=> (not res!20030) (not e!20945))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!32980 (= res!20030 (validKeyInArray!0 k0!1304))))

(declare-fun b!32981 () Bool)

(declare-fun e!20947 () Bool)

(assert (=> b!32981 (= e!20947 tp_is_empty!1509)))

(declare-fun b!32982 () Bool)

(declare-fun res!20031 () Bool)

(assert (=> b!32982 (=> (not res!20031) (not e!20945))))

(declare-datatypes ((V!1837 0))(
  ( (V!1838 (val!781 Int)) )
))
(declare-datatypes ((ValueCell!555 0))(
  ( (ValueCellFull!555 (v!1872 V!1837)) (EmptyCell!555) )
))
(declare-datatypes ((array!2229 0))(
  ( (array!2230 (arr!1066 (Array (_ BitVec 32) ValueCell!555)) (size!1167 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2229)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!32982 (= res!20031 (and (= (size!1167 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1166 _keys!1833) (size!1167 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!1798 () Bool)

(declare-fun tp!4890 () Bool)

(assert (=> mapNonEmpty!1798 (= mapRes!1798 (and tp!4890 e!20947))))

(declare-fun mapKey!1798 () (_ BitVec 32))

(declare-fun mapRest!1798 () (Array (_ BitVec 32) ValueCell!555))

(declare-fun mapValue!1798 () ValueCell!555)

(assert (=> mapNonEmpty!1798 (= (arr!1066 _values!1501) (store mapRest!1798 mapKey!1798 mapValue!1798))))

(declare-fun b!32984 () Bool)

(declare-fun res!20029 () Bool)

(assert (=> b!32984 (=> (not res!20029) (not e!20945))))

(declare-datatypes ((List!867 0))(
  ( (Nil!864) (Cons!863 (h!1430 (_ BitVec 64)) (t!3566 List!867)) )
))
(declare-fun arrayNoDuplicates!0 (array!2227 (_ BitVec 32) List!867) Bool)

(assert (=> b!32984 (= res!20029 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!864))))

(declare-fun b!32985 () Bool)

(declare-fun e!20949 () Bool)

(assert (=> b!32985 (= e!20949 (and e!20950 mapRes!1798))))

(declare-fun condMapEmpty!1798 () Bool)

(declare-fun mapDefault!1798 () ValueCell!555)

(assert (=> b!32985 (= condMapEmpty!1798 (= (arr!1066 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!555)) mapDefault!1798)))))

(declare-fun b!32986 () Bool)

(assert (=> b!32986 (= e!20945 e!20946)))

(declare-fun res!20033 () Bool)

(assert (=> b!32986 (=> (not res!20033) (not e!20946))))

(declare-datatypes ((tuple2!1264 0))(
  ( (tuple2!1265 (_1!642 (_ BitVec 64)) (_2!642 V!1837)) )
))
(declare-datatypes ((List!868 0))(
  ( (Nil!865) (Cons!864 (h!1431 tuple2!1264) (t!3567 List!868)) )
))
(declare-datatypes ((ListLongMap!845 0))(
  ( (ListLongMap!846 (toList!438 List!868)) )
))
(declare-fun lt!11947 () ListLongMap!845)

(declare-fun contains!377 (ListLongMap!845 (_ BitVec 64)) Bool)

(assert (=> b!32986 (= res!20033 (not (contains!377 lt!11947 k0!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1837)

(declare-fun minValue!1443 () V!1837)

(declare-fun getCurrentListMap!263 (array!2227 array!2229 (_ BitVec 32) (_ BitVec 32) V!1837 V!1837 (_ BitVec 32) Int) ListLongMap!845)

(assert (=> b!32986 (= lt!11947 (getCurrentListMap!263 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!32983 () Bool)

(assert (=> b!32983 (= e!20946 (not true))))

(declare-fun lt!11948 () (_ BitVec 32))

(assert (=> b!32983 (contains!377 lt!11947 (select (arr!1065 _keys!1833) lt!11948))))

(declare-datatypes ((Unit!729 0))(
  ( (Unit!730) )
))
(declare-fun lt!11949 () Unit!729)

(declare-fun lemmaValidKeyInArrayIsInListMap!52 (array!2227 array!2229 (_ BitVec 32) (_ BitVec 32) V!1837 V!1837 (_ BitVec 32) Int) Unit!729)

(assert (=> b!32983 (= lt!11949 (lemmaValidKeyInArrayIsInListMap!52 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!11948 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!2227 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!32983 (= lt!11948 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun res!20032 () Bool)

(assert (=> start!4288 (=> (not res!20032) (not e!20945))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4288 (= res!20032 (validMask!0 mask!2294))))

(assert (=> start!4288 e!20945))

(assert (=> start!4288 true))

(assert (=> start!4288 tp!4891))

(declare-fun array_inv!709 (array!2229) Bool)

(assert (=> start!4288 (and (array_inv!709 _values!1501) e!20949)))

(declare-fun array_inv!710 (array!2227) Bool)

(assert (=> start!4288 (array_inv!710 _keys!1833)))

(assert (=> start!4288 tp_is_empty!1509))

(assert (= (and start!4288 res!20032) b!32982))

(assert (= (and b!32982 res!20031) b!32978))

(assert (= (and b!32978 res!20034) b!32984))

(assert (= (and b!32984 res!20029) b!32980))

(assert (= (and b!32980 res!20030) b!32986))

(assert (= (and b!32986 res!20033) b!32979))

(assert (= (and b!32979 res!20035) b!32983))

(assert (= (and b!32985 condMapEmpty!1798) mapIsEmpty!1798))

(assert (= (and b!32985 (not condMapEmpty!1798)) mapNonEmpty!1798))

(get-info :version)

(assert (= (and mapNonEmpty!1798 ((_ is ValueCellFull!555) mapValue!1798)) b!32981))

(assert (= (and b!32985 ((_ is ValueCellFull!555) mapDefault!1798)) b!32977))

(assert (= start!4288 b!32985))

(declare-fun m!26417 () Bool)

(assert (=> b!32984 m!26417))

(declare-fun m!26419 () Bool)

(assert (=> mapNonEmpty!1798 m!26419))

(declare-fun m!26421 () Bool)

(assert (=> start!4288 m!26421))

(declare-fun m!26423 () Bool)

(assert (=> start!4288 m!26423))

(declare-fun m!26425 () Bool)

(assert (=> start!4288 m!26425))

(declare-fun m!26427 () Bool)

(assert (=> b!32983 m!26427))

(assert (=> b!32983 m!26427))

(declare-fun m!26429 () Bool)

(assert (=> b!32983 m!26429))

(declare-fun m!26431 () Bool)

(assert (=> b!32983 m!26431))

(declare-fun m!26433 () Bool)

(assert (=> b!32983 m!26433))

(declare-fun m!26435 () Bool)

(assert (=> b!32986 m!26435))

(declare-fun m!26437 () Bool)

(assert (=> b!32986 m!26437))

(declare-fun m!26439 () Bool)

(assert (=> b!32979 m!26439))

(declare-fun m!26441 () Bool)

(assert (=> b!32978 m!26441))

(declare-fun m!26443 () Bool)

(assert (=> b!32980 m!26443))

(check-sat (not b!32978) (not b!32979) (not mapNonEmpty!1798) (not b!32980) (not b_next!1155) (not b!32984) tp_is_empty!1509 b_and!1971 (not b!32983) (not start!4288) (not b!32986))
(check-sat b_and!1971 (not b_next!1155))
