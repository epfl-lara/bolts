; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70892 () Bool)

(assert start!70892)

(declare-fun b_free!13105 () Bool)

(declare-fun b_next!13105 () Bool)

(assert (=> start!70892 (= b_free!13105 (not b_next!13105))))

(declare-fun tp!46062 () Bool)

(declare-fun b_and!22007 () Bool)

(assert (=> start!70892 (= tp!46062 b_and!22007)))

(declare-fun b!822957 () Bool)

(declare-fun res!561351 () Bool)

(declare-fun e!457690 () Bool)

(assert (=> b!822957 (=> (not res!561351) (not e!457690))))

(declare-datatypes ((array!45784 0))(
  ( (array!45785 (arr!21937 (Array (_ BitVec 32) (_ BitVec 64))) (size!22358 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45784)

(declare-datatypes ((List!15706 0))(
  ( (Nil!15703) (Cons!15702 (h!16831 (_ BitVec 64)) (t!22053 List!15706)) )
))
(declare-fun arrayNoDuplicates!0 (array!45784 (_ BitVec 32) List!15706) Bool)

(assert (=> b!822957 (= res!561351 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15703))))

(declare-fun b!822958 () Bool)

(declare-fun e!457686 () Bool)

(declare-fun tp_is_empty!14815 () Bool)

(assert (=> b!822958 (= e!457686 tp_is_empty!14815)))

(declare-fun b!822959 () Bool)

(declare-fun res!561354 () Bool)

(assert (=> b!822959 (=> (not res!561354) (not e!457690))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45784 (_ BitVec 32)) Bool)

(assert (=> b!822959 (= res!561354 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!822960 () Bool)

(declare-fun e!457689 () Bool)

(assert (=> b!822960 (= e!457689 true)))

(declare-datatypes ((V!24755 0))(
  ( (V!24756 (val!7455 Int)) )
))
(declare-datatypes ((tuple2!9848 0))(
  ( (tuple2!9849 (_1!4934 (_ BitVec 64)) (_2!4934 V!24755)) )
))
(declare-datatypes ((List!15707 0))(
  ( (Nil!15704) (Cons!15703 (h!16832 tuple2!9848) (t!22054 List!15707)) )
))
(declare-datatypes ((ListLongMap!8685 0))(
  ( (ListLongMap!8686 (toList!4358 List!15707)) )
))
(declare-fun lt!370836 () ListLongMap!8685)

(declare-fun lt!370833 () ListLongMap!8685)

(declare-fun lt!370832 () tuple2!9848)

(declare-fun +!1860 (ListLongMap!8685 tuple2!9848) ListLongMap!8685)

(assert (=> b!822960 (= lt!370836 (+!1860 lt!370833 lt!370832))))

(declare-fun zeroValueAfter!34 () V!24755)

(declare-fun minValue!754 () V!24755)

(declare-datatypes ((Unit!28160 0))(
  ( (Unit!28161) )
))
(declare-fun lt!370828 () Unit!28160)

(declare-fun lt!370829 () ListLongMap!8685)

(declare-fun addCommutativeForDiffKeys!455 (ListLongMap!8685 (_ BitVec 64) V!24755 (_ BitVec 64) V!24755) Unit!28160)

(assert (=> b!822960 (= lt!370828 (addCommutativeForDiffKeys!455 lt!370829 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!370835 () ListLongMap!8685)

(assert (=> b!822960 (= lt!370835 lt!370836)))

(declare-fun lt!370831 () tuple2!9848)

(assert (=> b!822960 (= lt!370836 (+!1860 (+!1860 lt!370829 lt!370832) lt!370831))))

(assert (=> b!822960 (= lt!370832 (tuple2!9849 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!370830 () ListLongMap!8685)

(assert (=> b!822960 (= lt!370830 lt!370833)))

(assert (=> b!822960 (= lt!370833 (+!1860 lt!370829 lt!370831))))

(assert (=> b!822960 (= lt!370831 (tuple2!9849 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((ValueCell!6992 0))(
  ( (ValueCellFull!6992 (v!9883 V!24755)) (EmptyCell!6992) )
))
(declare-datatypes ((array!45786 0))(
  ( (array!45787 (arr!21938 (Array (_ BitVec 32) ValueCell!6992)) (size!22359 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45786)

(declare-fun getCurrentListMap!2490 (array!45784 array!45786 (_ BitVec 32) (_ BitVec 32) V!24755 V!24755 (_ BitVec 32) Int) ListLongMap!8685)

(assert (=> b!822960 (= lt!370835 (getCurrentListMap!2490 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24755)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!822960 (= lt!370830 (getCurrentListMap!2490 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822961 () Bool)

(declare-fun e!457685 () Bool)

(declare-fun e!457688 () Bool)

(declare-fun mapRes!23836 () Bool)

(assert (=> b!822961 (= e!457685 (and e!457688 mapRes!23836))))

(declare-fun condMapEmpty!23836 () Bool)

(declare-fun mapDefault!23836 () ValueCell!6992)

