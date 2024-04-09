; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82840 () Bool)

(assert start!82840)

(declare-fun b_free!18939 () Bool)

(declare-fun b_next!18939 () Bool)

(assert (=> start!82840 (= b_free!18939 (not b_next!18939))))

(declare-fun tp!65947 () Bool)

(declare-fun b_and!30445 () Bool)

(assert (=> start!82840 (= tp!65947 b_and!30445)))

(declare-fun b!965843 () Bool)

(declare-fun res!646617 () Bool)

(declare-fun e!544504 () Bool)

(assert (=> b!965843 (=> (not res!646617) (not e!544504))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33979 0))(
  ( (V!33980 (val!10924 Int)) )
))
(declare-datatypes ((ValueCell!10392 0))(
  ( (ValueCellFull!10392 (v!13482 V!33979)) (EmptyCell!10392) )
))
(declare-datatypes ((array!59559 0))(
  ( (array!59560 (arr!28644 (Array (_ BitVec 32) ValueCell!10392)) (size!29124 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59559)

(declare-datatypes ((array!59561 0))(
  ( (array!59562 (arr!28645 (Array (_ BitVec 32) (_ BitVec 64))) (size!29125 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59561)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!965843 (= res!646617 (and (= (size!29124 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29125 _keys!1686) (size!29124 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!965844 () Bool)

(declare-fun res!646620 () Bool)

(assert (=> b!965844 (=> (not res!646620) (not e!544504))))

(declare-datatypes ((List!20005 0))(
  ( (Nil!20002) (Cons!20001 (h!21163 (_ BitVec 64)) (t!28376 List!20005)) )
))
(declare-fun arrayNoDuplicates!0 (array!59561 (_ BitVec 32) List!20005) Bool)

(assert (=> b!965844 (= res!646620 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20002))))

(declare-fun b!965845 () Bool)

(declare-fun e!544502 () Bool)

(declare-fun tp_is_empty!21747 () Bool)

(assert (=> b!965845 (= e!544502 tp_is_empty!21747)))

(declare-fun mapNonEmpty!34615 () Bool)

(declare-fun mapRes!34615 () Bool)

(declare-fun tp!65946 () Bool)

(declare-fun e!544500 () Bool)

(assert (=> mapNonEmpty!34615 (= mapRes!34615 (and tp!65946 e!544500))))

(declare-fun mapRest!34615 () (Array (_ BitVec 32) ValueCell!10392))

(declare-fun mapKey!34615 () (_ BitVec 32))

(declare-fun mapValue!34615 () ValueCell!10392)

(assert (=> mapNonEmpty!34615 (= (arr!28644 _values!1400) (store mapRest!34615 mapKey!34615 mapValue!34615))))

(declare-fun mapIsEmpty!34615 () Bool)

(assert (=> mapIsEmpty!34615 mapRes!34615))

(declare-fun b!965846 () Bool)

(declare-fun res!646622 () Bool)

(assert (=> b!965846 (=> (not res!646622) (not e!544504))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!965846 (= res!646622 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29125 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29125 _keys!1686))))))

(declare-fun res!646619 () Bool)

(assert (=> start!82840 (=> (not res!646619) (not e!544504))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82840 (= res!646619 (validMask!0 mask!2110))))

(assert (=> start!82840 e!544504))

(assert (=> start!82840 true))

(declare-fun e!544503 () Bool)

(declare-fun array_inv!22089 (array!59559) Bool)

(assert (=> start!82840 (and (array_inv!22089 _values!1400) e!544503)))

(declare-fun array_inv!22090 (array!59561) Bool)

(assert (=> start!82840 (array_inv!22090 _keys!1686)))

(assert (=> start!82840 tp!65947))

(assert (=> start!82840 tp_is_empty!21747))

(declare-fun b!965847 () Bool)

(assert (=> b!965847 (= e!544504 false)))

(declare-fun minValue!1342 () V!33979)

(declare-fun defaultEntry!1403 () Int)

(declare-fun lt!431229 () Bool)

(declare-fun zeroValue!1342 () V!33979)

(declare-datatypes ((tuple2!14128 0))(
  ( (tuple2!14129 (_1!7074 (_ BitVec 64)) (_2!7074 V!33979)) )
))
(declare-datatypes ((List!20006 0))(
  ( (Nil!20003) (Cons!20002 (h!21164 tuple2!14128) (t!28377 List!20006)) )
))
(declare-datatypes ((ListLongMap!12839 0))(
  ( (ListLongMap!12840 (toList!6435 List!20006)) )
))
(declare-fun contains!5486 (ListLongMap!12839 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3620 (array!59561 array!59559 (_ BitVec 32) (_ BitVec 32) V!33979 V!33979 (_ BitVec 32) Int) ListLongMap!12839)

(assert (=> b!965847 (= lt!431229 (contains!5486 (getCurrentListMap!3620 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28645 _keys!1686) i!803)))))

(declare-fun b!965848 () Bool)

(assert (=> b!965848 (= e!544500 tp_is_empty!21747)))

(declare-fun b!965849 () Bool)

(declare-fun res!646618 () Bool)

(assert (=> b!965849 (=> (not res!646618) (not e!544504))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!965849 (= res!646618 (validKeyInArray!0 (select (arr!28645 _keys!1686) i!803)))))

(declare-fun b!965850 () Bool)

(assert (=> b!965850 (= e!544503 (and e!544502 mapRes!34615))))

(declare-fun condMapEmpty!34615 () Bool)

(declare-fun mapDefault!34615 () ValueCell!10392)

(assert (=> b!965850 (= condMapEmpty!34615 (= (arr!28644 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10392)) mapDefault!34615)))))

(declare-fun b!965851 () Bool)

(declare-fun res!646621 () Bool)

(assert (=> b!965851 (=> (not res!646621) (not e!544504))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59561 (_ BitVec 32)) Bool)

(assert (=> b!965851 (= res!646621 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(assert (= (and start!82840 res!646619) b!965843))

(assert (= (and b!965843 res!646617) b!965851))

(assert (= (and b!965851 res!646621) b!965844))

(assert (= (and b!965844 res!646620) b!965846))

(assert (= (and b!965846 res!646622) b!965849))

(assert (= (and b!965849 res!646618) b!965847))

(assert (= (and b!965850 condMapEmpty!34615) mapIsEmpty!34615))

(assert (= (and b!965850 (not condMapEmpty!34615)) mapNonEmpty!34615))

(get-info :version)

(assert (= (and mapNonEmpty!34615 ((_ is ValueCellFull!10392) mapValue!34615)) b!965848))

(assert (= (and b!965850 ((_ is ValueCellFull!10392) mapDefault!34615)) b!965845))

(assert (= start!82840 b!965850))

(declare-fun m!894855 () Bool)

(assert (=> start!82840 m!894855))

(declare-fun m!894857 () Bool)

(assert (=> start!82840 m!894857))

(declare-fun m!894859 () Bool)

(assert (=> start!82840 m!894859))

(declare-fun m!894861 () Bool)

(assert (=> b!965849 m!894861))

(assert (=> b!965849 m!894861))

(declare-fun m!894863 () Bool)

(assert (=> b!965849 m!894863))

(declare-fun m!894865 () Bool)

(assert (=> b!965844 m!894865))

(declare-fun m!894867 () Bool)

(assert (=> b!965851 m!894867))

(declare-fun m!894869 () Bool)

(assert (=> b!965847 m!894869))

(assert (=> b!965847 m!894861))

(assert (=> b!965847 m!894869))

(assert (=> b!965847 m!894861))

(declare-fun m!894871 () Bool)

(assert (=> b!965847 m!894871))

(declare-fun m!894873 () Bool)

(assert (=> mapNonEmpty!34615 m!894873))

(check-sat (not b!965851) (not b!965847) (not b!965849) (not b_next!18939) tp_is_empty!21747 (not mapNonEmpty!34615) (not start!82840) (not b!965844) b_and!30445)
(check-sat b_and!30445 (not b_next!18939))
