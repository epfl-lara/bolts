; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82660 () Bool)

(assert start!82660)

(declare-fun b_free!18765 () Bool)

(declare-fun b_next!18765 () Bool)

(assert (=> start!82660 (= b_free!18765 (not b_next!18765))))

(declare-fun tp!65416 () Bool)

(declare-fun b_and!30271 () Bool)

(assert (=> start!82660 (= tp!65416 b_and!30271)))

(declare-fun b!963045 () Bool)

(declare-fun e!543072 () Bool)

(declare-fun tp_is_empty!21567 () Bool)

(assert (=> b!963045 (= e!543072 tp_is_empty!21567)))

(declare-fun b!963046 () Bool)

(declare-fun e!543069 () Bool)

(assert (=> b!963046 (= e!543069 tp_is_empty!21567)))

(declare-fun b!963047 () Bool)

(declare-fun e!543073 () Bool)

(declare-fun mapRes!34345 () Bool)

(assert (=> b!963047 (= e!543073 (and e!543069 mapRes!34345))))

(declare-fun condMapEmpty!34345 () Bool)

(declare-datatypes ((V!33739 0))(
  ( (V!33740 (val!10834 Int)) )
))
(declare-datatypes ((ValueCell!10302 0))(
  ( (ValueCellFull!10302 (v!13392 V!33739)) (EmptyCell!10302) )
))
(declare-datatypes ((array!59211 0))(
  ( (array!59212 (arr!28470 (Array (_ BitVec 32) ValueCell!10302)) (size!28950 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59211)

(declare-fun mapDefault!34345 () ValueCell!10302)

(assert (=> b!963047 (= condMapEmpty!34345 (= (arr!28470 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10302)) mapDefault!34345)))))

(declare-fun b!963048 () Bool)

(declare-fun res!644632 () Bool)

(declare-fun e!543070 () Bool)

(assert (=> b!963048 (=> (not res!644632) (not e!543070))))

(declare-datatypes ((array!59213 0))(
  ( (array!59214 (arr!28471 (Array (_ BitVec 32) (_ BitVec 64))) (size!28951 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59213)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!963048 (= res!644632 (validKeyInArray!0 (select (arr!28471 _keys!1686) i!803)))))

(declare-fun mapIsEmpty!34345 () Bool)

(assert (=> mapIsEmpty!34345 mapRes!34345))

(declare-fun b!963049 () Bool)

(declare-fun res!644635 () Bool)

(assert (=> b!963049 (=> (not res!644635) (not e!543070))))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!963049 (= res!644635 (bvsgt from!2084 newFrom!159))))

(declare-fun b!963050 () Bool)

(declare-fun res!644634 () Bool)

(assert (=> b!963050 (=> (not res!644634) (not e!543070))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59213 (_ BitVec 32)) Bool)

(assert (=> b!963050 (= res!644634 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!963051 () Bool)

(declare-fun res!644631 () Bool)

(assert (=> b!963051 (=> (not res!644631) (not e!543070))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun minValue!1342 () V!33739)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33739)

(declare-datatypes ((tuple2!14000 0))(
  ( (tuple2!14001 (_1!7010 (_ BitVec 64)) (_2!7010 V!33739)) )
))
(declare-datatypes ((List!19882 0))(
  ( (Nil!19879) (Cons!19878 (h!21040 tuple2!14000) (t!28253 List!19882)) )
))
(declare-datatypes ((ListLongMap!12711 0))(
  ( (ListLongMap!12712 (toList!6371 List!19882)) )
))
(declare-fun contains!5425 (ListLongMap!12711 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3556 (array!59213 array!59211 (_ BitVec 32) (_ BitVec 32) V!33739 V!33739 (_ BitVec 32) Int) ListLongMap!12711)

(assert (=> b!963051 (= res!644631 (contains!5425 (getCurrentListMap!3556 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28471 _keys!1686) i!803)))))

(declare-fun b!963052 () Bool)

(declare-fun res!644629 () Bool)

(assert (=> b!963052 (=> (not res!644629) (not e!543070))))

(assert (=> b!963052 (= res!644629 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28951 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28951 _keys!1686))))))

(declare-fun b!963053 () Bool)

(declare-fun res!644636 () Bool)

(assert (=> b!963053 (=> (not res!644636) (not e!543070))))

(declare-datatypes ((List!19883 0))(
  ( (Nil!19880) (Cons!19879 (h!21041 (_ BitVec 64)) (t!28254 List!19883)) )
))
(declare-fun arrayNoDuplicates!0 (array!59213 (_ BitVec 32) List!19883) Bool)

(assert (=> b!963053 (= res!644636 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19880))))

(declare-fun b!963054 () Bool)

(declare-fun res!644630 () Bool)

(assert (=> b!963054 (=> (not res!644630) (not e!543070))))

(assert (=> b!963054 (= res!644630 (and (= (size!28950 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28951 _keys!1686) (size!28950 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun res!644633 () Bool)

(assert (=> start!82660 (=> (not res!644633) (not e!543070))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82660 (= res!644633 (validMask!0 mask!2110))))

(assert (=> start!82660 e!543070))

(assert (=> start!82660 true))

(declare-fun array_inv!21981 (array!59211) Bool)

(assert (=> start!82660 (and (array_inv!21981 _values!1400) e!543073)))

(declare-fun array_inv!21982 (array!59213) Bool)

(assert (=> start!82660 (array_inv!21982 _keys!1686)))

(assert (=> start!82660 tp!65416))

(assert (=> start!82660 tp_is_empty!21567))

(declare-fun mapNonEmpty!34345 () Bool)

(declare-fun tp!65415 () Bool)

(assert (=> mapNonEmpty!34345 (= mapRes!34345 (and tp!65415 e!543072))))

(declare-fun mapValue!34345 () ValueCell!10302)

(declare-fun mapRest!34345 () (Array (_ BitVec 32) ValueCell!10302))

(declare-fun mapKey!34345 () (_ BitVec 32))

(assert (=> mapNonEmpty!34345 (= (arr!28470 _values!1400) (store mapRest!34345 mapKey!34345 mapValue!34345))))

(declare-fun b!963055 () Bool)

(assert (=> b!963055 (= e!543070 (not true))))

(assert (=> b!963055 (contains!5425 (getCurrentListMap!3556 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28471 _keys!1686) i!803))))

(declare-datatypes ((Unit!32205 0))(
  ( (Unit!32206) )
))
(declare-fun lt!430896 () Unit!32205)

(declare-fun lemmaInListMapFromThenInFromMinusOne!11 (array!59213 array!59211 (_ BitVec 32) (_ BitVec 32) V!33739 V!33739 (_ BitVec 32) (_ BitVec 32) Int) Unit!32205)

(assert (=> b!963055 (= lt!430896 (lemmaInListMapFromThenInFromMinusOne!11 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(assert (= (and start!82660 res!644633) b!963054))

(assert (= (and b!963054 res!644630) b!963050))

(assert (= (and b!963050 res!644634) b!963053))

(assert (= (and b!963053 res!644636) b!963052))

(assert (= (and b!963052 res!644629) b!963048))

(assert (= (and b!963048 res!644632) b!963051))

(assert (= (and b!963051 res!644631) b!963049))

(assert (= (and b!963049 res!644635) b!963055))

(assert (= (and b!963047 condMapEmpty!34345) mapIsEmpty!34345))

(assert (= (and b!963047 (not condMapEmpty!34345)) mapNonEmpty!34345))

(get-info :version)

(assert (= (and mapNonEmpty!34345 ((_ is ValueCellFull!10302) mapValue!34345)) b!963045))

(assert (= (and b!963047 ((_ is ValueCellFull!10302) mapDefault!34345)) b!963046))

(assert (= start!82660 b!963047))

(declare-fun m!892623 () Bool)

(assert (=> b!963048 m!892623))

(assert (=> b!963048 m!892623))

(declare-fun m!892625 () Bool)

(assert (=> b!963048 m!892625))

(declare-fun m!892627 () Bool)

(assert (=> b!963053 m!892627))

(declare-fun m!892629 () Bool)

(assert (=> b!963050 m!892629))

(declare-fun m!892631 () Bool)

(assert (=> b!963051 m!892631))

(assert (=> b!963051 m!892623))

(assert (=> b!963051 m!892631))

(assert (=> b!963051 m!892623))

(declare-fun m!892633 () Bool)

(assert (=> b!963051 m!892633))

(declare-fun m!892635 () Bool)

(assert (=> start!82660 m!892635))

(declare-fun m!892637 () Bool)

(assert (=> start!82660 m!892637))

(declare-fun m!892639 () Bool)

(assert (=> start!82660 m!892639))

(declare-fun m!892641 () Bool)

(assert (=> mapNonEmpty!34345 m!892641))

(declare-fun m!892643 () Bool)

(assert (=> b!963055 m!892643))

(assert (=> b!963055 m!892623))

(assert (=> b!963055 m!892643))

(assert (=> b!963055 m!892623))

(declare-fun m!892645 () Bool)

(assert (=> b!963055 m!892645))

(declare-fun m!892647 () Bool)

(assert (=> b!963055 m!892647))

(check-sat b_and!30271 (not start!82660) (not b!963050) (not b_next!18765) (not b!963055) (not b!963048) (not mapNonEmpty!34345) (not b!963051) (not b!963053) tp_is_empty!21567)
(check-sat b_and!30271 (not b_next!18765))
