; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3978 () Bool)

(assert start!3978)

(declare-fun b_free!885 () Bool)

(declare-fun b_next!885 () Bool)

(assert (=> start!3978 (= b_free!885 (not b_next!885))))

(declare-fun tp!4075 () Bool)

(declare-fun b_and!1697 () Bool)

(assert (=> start!3978 (= tp!4075 b_and!1697)))

(declare-fun b!28717 () Bool)

(declare-fun res!17125 () Bool)

(declare-fun e!18565 () Bool)

(assert (=> b!28717 (=> (not res!17125) (not e!18565))))

(declare-datatypes ((array!1701 0))(
  ( (array!1702 (arr!804 (Array (_ BitVec 32) (_ BitVec 64))) (size!905 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1701)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1701 (_ BitVec 32)) Bool)

(assert (=> b!28717 (= res!17125 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapNonEmpty!1387 () Bool)

(declare-fun mapRes!1387 () Bool)

(declare-fun tp!4074 () Bool)

(declare-fun e!18567 () Bool)

(assert (=> mapNonEmpty!1387 (= mapRes!1387 (and tp!4074 e!18567))))

(declare-datatypes ((V!1477 0))(
  ( (V!1478 (val!646 Int)) )
))
(declare-datatypes ((ValueCell!420 0))(
  ( (ValueCellFull!420 (v!1735 V!1477)) (EmptyCell!420) )
))
(declare-datatypes ((array!1703 0))(
  ( (array!1704 (arr!805 (Array (_ BitVec 32) ValueCell!420)) (size!906 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1703)

(declare-fun mapKey!1387 () (_ BitVec 32))

(declare-fun mapRest!1387 () (Array (_ BitVec 32) ValueCell!420))

(declare-fun mapValue!1387 () ValueCell!420)

(assert (=> mapNonEmpty!1387 (= (arr!805 _values!1501) (store mapRest!1387 mapKey!1387 mapValue!1387))))

(declare-fun res!17130 () Bool)

(assert (=> start!3978 (=> (not res!17130) (not e!18565))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3978 (= res!17130 (validMask!0 mask!2294))))

(assert (=> start!3978 e!18565))

(assert (=> start!3978 true))

(assert (=> start!3978 tp!4075))

(declare-fun e!18568 () Bool)

(declare-fun array_inv!543 (array!1703) Bool)

(assert (=> start!3978 (and (array_inv!543 _values!1501) e!18568)))

(declare-fun array_inv!544 (array!1701) Bool)

(assert (=> start!3978 (array_inv!544 _keys!1833)))

(declare-fun tp_is_empty!1239 () Bool)

(assert (=> start!3978 tp_is_empty!1239))

(declare-fun b!28718 () Bool)

(declare-fun res!17129 () Bool)

(assert (=> b!28718 (=> (not res!17129) (not e!18565))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!28718 (= res!17129 (and (= (size!906 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!905 _keys!1833) (size!906 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!28719 () Bool)

(assert (=> b!28719 (= e!18567 tp_is_empty!1239)))

(declare-fun mapIsEmpty!1387 () Bool)

(assert (=> mapIsEmpty!1387 mapRes!1387))

(declare-fun b!28720 () Bool)

(declare-fun e!18566 () Bool)

(declare-fun e!18571 () Bool)

(assert (=> b!28720 (= e!18566 (not e!18571))))

(declare-fun res!17124 () Bool)

(assert (=> b!28720 (=> res!17124 e!18571)))

(assert (=> b!28720 (= res!17124 (not (= (size!905 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294))))))

(declare-datatypes ((tuple2!1058 0))(
  ( (tuple2!1059 (_1!539 (_ BitVec 64)) (_2!539 V!1477)) )
))
(declare-datatypes ((List!670 0))(
  ( (Nil!667) (Cons!666 (h!1233 tuple2!1058) (t!3365 List!670)) )
))
(declare-datatypes ((ListLongMap!639 0))(
  ( (ListLongMap!640 (toList!335 List!670)) )
))
(declare-fun lt!10910 () ListLongMap!639)

(declare-fun lt!10911 () (_ BitVec 32))

(declare-fun contains!272 (ListLongMap!639 (_ BitVec 64)) Bool)

(assert (=> b!28720 (contains!272 lt!10910 (select (arr!804 _keys!1833) lt!10911))))

(declare-datatypes ((Unit!653 0))(
  ( (Unit!654) )
))
(declare-fun lt!10908 () Unit!653)

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1477)

(declare-fun minValue!1443 () V!1477)

(declare-fun lemmaValidKeyInArrayIsInListMap!18 (array!1701 array!1703 (_ BitVec 32) (_ BitVec 32) V!1477 V!1477 (_ BitVec 32) Int) Unit!653)

(assert (=> b!28720 (= lt!10908 (lemmaValidKeyInArrayIsInListMap!18 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!10911 defaultEntry!1504))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!1701 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!28720 (= lt!10911 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!28721 () Bool)

(assert (=> b!28721 (= e!18571 true)))

(declare-datatypes ((SeekEntryResult!77 0))(
  ( (MissingZero!77 (index!2430 (_ BitVec 32))) (Found!77 (index!2431 (_ BitVec 32))) (Intermediate!77 (undefined!889 Bool) (index!2432 (_ BitVec 32)) (x!6347 (_ BitVec 32))) (Undefined!77) (MissingVacant!77 (index!2433 (_ BitVec 32))) )
))
(declare-fun lt!10909 () SeekEntryResult!77)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1701 (_ BitVec 32)) SeekEntryResult!77)

(assert (=> b!28721 (= lt!10909 (seekEntryOrOpen!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun b!28722 () Bool)

(declare-fun res!17128 () Bool)

(assert (=> b!28722 (=> (not res!17128) (not e!18566))))

(declare-fun arrayContainsKey!0 (array!1701 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!28722 (= res!17128 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!28723 () Bool)

(assert (=> b!28723 (= e!18565 e!18566)))

(declare-fun res!17126 () Bool)

(assert (=> b!28723 (=> (not res!17126) (not e!18566))))

(assert (=> b!28723 (= res!17126 (not (contains!272 lt!10910 k0!1304)))))

(declare-fun getCurrentListMap!162 (array!1701 array!1703 (_ BitVec 32) (_ BitVec 32) V!1477 V!1477 (_ BitVec 32) Int) ListLongMap!639)

(assert (=> b!28723 (= lt!10910 (getCurrentListMap!162 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!28724 () Bool)

(declare-fun res!17127 () Bool)

(assert (=> b!28724 (=> (not res!17127) (not e!18565))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!28724 (= res!17127 (validKeyInArray!0 k0!1304))))

(declare-fun b!28725 () Bool)

(declare-fun e!18570 () Bool)

(assert (=> b!28725 (= e!18570 tp_is_empty!1239)))

(declare-fun b!28726 () Bool)

(declare-fun res!17131 () Bool)

(assert (=> b!28726 (=> (not res!17131) (not e!18565))))

(declare-datatypes ((List!671 0))(
  ( (Nil!668) (Cons!667 (h!1234 (_ BitVec 64)) (t!3366 List!671)) )
))
(declare-fun arrayNoDuplicates!0 (array!1701 (_ BitVec 32) List!671) Bool)

(assert (=> b!28726 (= res!17131 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!668))))

(declare-fun b!28727 () Bool)

(assert (=> b!28727 (= e!18568 (and e!18570 mapRes!1387))))

(declare-fun condMapEmpty!1387 () Bool)

(declare-fun mapDefault!1387 () ValueCell!420)

(assert (=> b!28727 (= condMapEmpty!1387 (= (arr!805 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!420)) mapDefault!1387)))))

(assert (= (and start!3978 res!17130) b!28718))

(assert (= (and b!28718 res!17129) b!28717))

(assert (= (and b!28717 res!17125) b!28726))

(assert (= (and b!28726 res!17131) b!28724))

(assert (= (and b!28724 res!17127) b!28723))

(assert (= (and b!28723 res!17126) b!28722))

(assert (= (and b!28722 res!17128) b!28720))

(assert (= (and b!28720 (not res!17124)) b!28721))

(assert (= (and b!28727 condMapEmpty!1387) mapIsEmpty!1387))

(assert (= (and b!28727 (not condMapEmpty!1387)) mapNonEmpty!1387))

(get-info :version)

(assert (= (and mapNonEmpty!1387 ((_ is ValueCellFull!420) mapValue!1387)) b!28719))

(assert (= (and b!28727 ((_ is ValueCellFull!420) mapDefault!1387)) b!28725))

(assert (= start!3978 b!28727))

(declare-fun m!22899 () Bool)

(assert (=> start!3978 m!22899))

(declare-fun m!22901 () Bool)

(assert (=> start!3978 m!22901))

(declare-fun m!22903 () Bool)

(assert (=> start!3978 m!22903))

(declare-fun m!22905 () Bool)

(assert (=> b!28721 m!22905))

(declare-fun m!22907 () Bool)

(assert (=> b!28720 m!22907))

(assert (=> b!28720 m!22907))

(declare-fun m!22909 () Bool)

(assert (=> b!28720 m!22909))

(declare-fun m!22911 () Bool)

(assert (=> b!28720 m!22911))

(declare-fun m!22913 () Bool)

(assert (=> b!28720 m!22913))

(declare-fun m!22915 () Bool)

(assert (=> mapNonEmpty!1387 m!22915))

(declare-fun m!22917 () Bool)

(assert (=> b!28717 m!22917))

(declare-fun m!22919 () Bool)

(assert (=> b!28724 m!22919))

(declare-fun m!22921 () Bool)

(assert (=> b!28726 m!22921))

(declare-fun m!22923 () Bool)

(assert (=> b!28722 m!22923))

(declare-fun m!22925 () Bool)

(assert (=> b!28723 m!22925))

(declare-fun m!22927 () Bool)

(assert (=> b!28723 m!22927))

(check-sat (not b!28717) tp_is_empty!1239 (not start!3978) (not b!28724) (not b!28726) (not b!28722) (not b!28720) (not b_next!885) (not mapNonEmpty!1387) (not b!28723) b_and!1697 (not b!28721))
(check-sat b_and!1697 (not b_next!885))
