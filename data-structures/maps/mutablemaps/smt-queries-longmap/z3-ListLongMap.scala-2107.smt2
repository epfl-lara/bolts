; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35820 () Bool)

(assert start!35820)

(declare-fun b!359518 () Bool)

(declare-fun res!199887 () Bool)

(declare-fun e!220256 () Bool)

(assert (=> b!359518 (=> (not res!199887) (not e!220256))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((array!20051 0))(
  ( (array!20052 (arr!9516 (Array (_ BitVec 32) (_ BitVec 64))) (size!9868 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20051)

(assert (=> b!359518 (= res!199887 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9868 _keys!1456))))))

(declare-fun b!359519 () Bool)

(declare-fun res!199889 () Bool)

(assert (=> b!359519 (=> (not res!199889) (not e!220256))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((V!11997 0))(
  ( (V!11998 (val!4177 Int)) )
))
(declare-datatypes ((ValueCell!3789 0))(
  ( (ValueCellFull!3789 (v!6367 V!11997)) (EmptyCell!3789) )
))
(declare-datatypes ((array!20053 0))(
  ( (array!20054 (arr!9517 (Array (_ BitVec 32) ValueCell!3789)) (size!9869 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20053)

(assert (=> b!359519 (= res!199889 (and (= (size!9869 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9868 _keys!1456) (size!9869 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun res!199893 () Bool)

(assert (=> start!35820 (=> (not res!199893) (not e!220256))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35820 (= res!199893 (validMask!0 mask!1842))))

(assert (=> start!35820 e!220256))

(declare-fun tp_is_empty!8265 () Bool)

(assert (=> start!35820 tp_is_empty!8265))

(assert (=> start!35820 true))

(declare-fun array_inv!7006 (array!20051) Bool)

(assert (=> start!35820 (array_inv!7006 _keys!1456)))

(declare-fun e!220255 () Bool)

(declare-fun array_inv!7007 (array!20053) Bool)

(assert (=> start!35820 (and (array_inv!7007 _values!1208) e!220255)))

(declare-fun b!359520 () Bool)

(declare-fun res!199891 () Bool)

(assert (=> b!359520 (=> (not res!199891) (not e!220256))))

(declare-datatypes ((List!5501 0))(
  ( (Nil!5498) (Cons!5497 (h!6353 (_ BitVec 64)) (t!10659 List!5501)) )
))
(declare-fun arrayNoDuplicates!0 (array!20051 (_ BitVec 32) List!5501) Bool)

(assert (=> b!359520 (= res!199891 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5498))))

(declare-fun mapNonEmpty!13905 () Bool)

(declare-fun mapRes!13905 () Bool)

(declare-fun tp!27972 () Bool)

(declare-fun e!220253 () Bool)

(assert (=> mapNonEmpty!13905 (= mapRes!13905 (and tp!27972 e!220253))))

(declare-fun mapRest!13905 () (Array (_ BitVec 32) ValueCell!3789))

(declare-fun mapKey!13905 () (_ BitVec 32))

(declare-fun mapValue!13905 () ValueCell!3789)

(assert (=> mapNonEmpty!13905 (= (arr!9517 _values!1208) (store mapRest!13905 mapKey!13905 mapValue!13905))))

(declare-fun b!359521 () Bool)

(assert (=> b!359521 (= e!220256 (not true))))

(declare-fun k0!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!20051 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!359521 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun minValue!1150 () V!11997)

(declare-datatypes ((Unit!11051 0))(
  ( (Unit!11052) )
))
(declare-fun lt!166345 () Unit!11051)

(declare-fun zeroValue!1150 () V!11997)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!42 (array!20051 array!20053 (_ BitVec 32) (_ BitVec 32) V!11997 V!11997 (_ BitVec 64) (_ BitVec 32)) Unit!11051)

(assert (=> b!359521 (= lt!166345 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!42 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun b!359522 () Bool)

(declare-fun e!220252 () Bool)

(assert (=> b!359522 (= e!220255 (and e!220252 mapRes!13905))))

(declare-fun condMapEmpty!13905 () Bool)

(declare-fun mapDefault!13905 () ValueCell!3789)

(assert (=> b!359522 (= condMapEmpty!13905 (= (arr!9517 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3789)) mapDefault!13905)))))

(declare-fun b!359523 () Bool)

(declare-fun res!199892 () Bool)

(assert (=> b!359523 (=> (not res!199892) (not e!220256))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!359523 (= res!199892 (validKeyInArray!0 k0!1077))))

(declare-fun b!359524 () Bool)

(declare-fun res!199890 () Bool)

(assert (=> b!359524 (=> (not res!199890) (not e!220256))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20051 (_ BitVec 32)) Bool)

(assert (=> b!359524 (= res!199890 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!359525 () Bool)

(assert (=> b!359525 (= e!220252 tp_is_empty!8265)))

(declare-fun b!359526 () Bool)

(declare-fun res!199894 () Bool)

(assert (=> b!359526 (=> (not res!199894) (not e!220256))))

(assert (=> b!359526 (= res!199894 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!359527 () Bool)

(declare-fun res!199888 () Bool)

(assert (=> b!359527 (=> (not res!199888) (not e!220256))))

(assert (=> b!359527 (= res!199888 (not (= (select (arr!9516 _keys!1456) from!1805) k0!1077)))))

(declare-fun mapIsEmpty!13905 () Bool)

(assert (=> mapIsEmpty!13905 mapRes!13905))

(declare-fun b!359528 () Bool)

(assert (=> b!359528 (= e!220253 tp_is_empty!8265)))

(assert (= (and start!35820 res!199893) b!359519))

(assert (= (and b!359519 res!199889) b!359524))

(assert (= (and b!359524 res!199890) b!359520))

(assert (= (and b!359520 res!199891) b!359523))

(assert (= (and b!359523 res!199892) b!359518))

(assert (= (and b!359518 res!199887) b!359526))

(assert (= (and b!359526 res!199894) b!359527))

(assert (= (and b!359527 res!199888) b!359521))

(assert (= (and b!359522 condMapEmpty!13905) mapIsEmpty!13905))

(assert (= (and b!359522 (not condMapEmpty!13905)) mapNonEmpty!13905))

(get-info :version)

(assert (= (and mapNonEmpty!13905 ((_ is ValueCellFull!3789) mapValue!13905)) b!359528))

(assert (= (and b!359522 ((_ is ValueCellFull!3789) mapDefault!13905)) b!359525))

(assert (= start!35820 b!359522))

(declare-fun m!356965 () Bool)

(assert (=> b!359527 m!356965))

(declare-fun m!356967 () Bool)

(assert (=> b!359524 m!356967))

(declare-fun m!356969 () Bool)

(assert (=> b!359521 m!356969))

(declare-fun m!356971 () Bool)

(assert (=> b!359521 m!356971))

(declare-fun m!356973 () Bool)

(assert (=> b!359523 m!356973))

(declare-fun m!356975 () Bool)

(assert (=> b!359520 m!356975))

(declare-fun m!356977 () Bool)

(assert (=> b!359526 m!356977))

(declare-fun m!356979 () Bool)

(assert (=> mapNonEmpty!13905 m!356979))

(declare-fun m!356981 () Bool)

(assert (=> start!35820 m!356981))

(declare-fun m!356983 () Bool)

(assert (=> start!35820 m!356983))

(declare-fun m!356985 () Bool)

(assert (=> start!35820 m!356985))

(check-sat (not b!359526) tp_is_empty!8265 (not b!359521) (not b!359524) (not mapNonEmpty!13905) (not b!359520) (not start!35820) (not b!359523))
(check-sat)
