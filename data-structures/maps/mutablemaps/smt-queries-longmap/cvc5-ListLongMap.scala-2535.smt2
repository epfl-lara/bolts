; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39036 () Bool)

(assert start!39036)

(declare-fun b_free!9295 () Bool)

(declare-fun b_next!9295 () Bool)

(assert (=> start!39036 (= b_free!9295 (not b_next!9295))))

(declare-fun tp!33414 () Bool)

(declare-fun b_and!16699 () Bool)

(assert (=> start!39036 (= tp!33414 b_and!16699)))

(declare-fun b!409047 () Bool)

(declare-fun res!236890 () Bool)

(declare-fun e!245421 () Bool)

(assert (=> b!409047 (=> (not res!236890) (not e!245421))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!409047 (= res!236890 (validMask!0 mask!1025))))

(declare-fun b!409048 () Bool)

(declare-fun e!245425 () Bool)

(declare-fun tp_is_empty!10447 () Bool)

(assert (=> b!409048 (= e!245425 tp_is_empty!10447)))

(declare-fun b!409049 () Bool)

(declare-fun res!236895 () Bool)

(assert (=> b!409049 (=> (not res!236895) (not e!245421))))

(declare-datatypes ((array!24747 0))(
  ( (array!24748 (arr!11820 (Array (_ BitVec 32) (_ BitVec 64))) (size!12172 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24747)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24747 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!409049 (= res!236895 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!409051 () Bool)

(declare-fun e!245420 () Bool)

(assert (=> b!409051 (= e!245420 false)))

(declare-datatypes ((V!15035 0))(
  ( (V!15036 (val!5268 Int)) )
))
(declare-fun minValue!515 () V!15035)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4880 0))(
  ( (ValueCellFull!4880 (v!7511 V!15035)) (EmptyCell!4880) )
))
(declare-datatypes ((array!24749 0))(
  ( (array!24750 (arr!11821 (Array (_ BitVec 32) ValueCell!4880)) (size!12173 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24749)

(declare-fun zeroValue!515 () V!15035)

(declare-datatypes ((tuple2!6774 0))(
  ( (tuple2!6775 (_1!3397 (_ BitVec 64)) (_2!3397 V!15035)) )
))
(declare-datatypes ((List!6822 0))(
  ( (Nil!6819) (Cons!6818 (h!7674 tuple2!6774) (t!12004 List!6822)) )
))
(declare-datatypes ((ListLongMap!5701 0))(
  ( (ListLongMap!5702 (toList!2866 List!6822)) )
))
(declare-fun lt!188882 () ListLongMap!5701)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1076 (array!24747 array!24749 (_ BitVec 32) (_ BitVec 32) V!15035 V!15035 (_ BitVec 32) Int) ListLongMap!5701)

(assert (=> b!409051 (= lt!188882 (getCurrentListMapNoExtraKeys!1076 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!409052 () Bool)

(declare-fun res!236891 () Bool)

(assert (=> b!409052 (=> (not res!236891) (not e!245421))))

(assert (=> b!409052 (= res!236891 (and (= (size!12173 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12172 _keys!709) (size!12173 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!409053 () Bool)

(declare-fun res!236887 () Bool)

(assert (=> b!409053 (=> (not res!236887) (not e!245421))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!409053 (= res!236887 (validKeyInArray!0 k!794))))

(declare-fun res!236894 () Bool)

(assert (=> start!39036 (=> (not res!236894) (not e!245421))))

(assert (=> start!39036 (= res!236894 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12172 _keys!709))))))

(assert (=> start!39036 e!245421))

(assert (=> start!39036 tp_is_empty!10447))

(assert (=> start!39036 tp!33414))

(assert (=> start!39036 true))

(declare-fun e!245424 () Bool)

(declare-fun array_inv!8632 (array!24749) Bool)

(assert (=> start!39036 (and (array_inv!8632 _values!549) e!245424)))

(declare-fun array_inv!8633 (array!24747) Bool)

(assert (=> start!39036 (array_inv!8633 _keys!709)))

(declare-fun b!409050 () Bool)

(declare-fun res!236892 () Bool)

(assert (=> b!409050 (=> (not res!236892) (not e!245421))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24747 (_ BitVec 32)) Bool)

(assert (=> b!409050 (= res!236892 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!409054 () Bool)

(declare-fun res!236896 () Bool)

(assert (=> b!409054 (=> (not res!236896) (not e!245421))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!409054 (= res!236896 (or (= (select (arr!11820 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11820 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!409055 () Bool)

(declare-fun e!245422 () Bool)

(assert (=> b!409055 (= e!245422 tp_is_empty!10447)))

(declare-fun b!409056 () Bool)

(declare-fun res!236897 () Bool)

(assert (=> b!409056 (=> (not res!236897) (not e!245420))))

(assert (=> b!409056 (= res!236897 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!17292 () Bool)

(declare-fun mapRes!17292 () Bool)

(declare-fun tp!33413 () Bool)

(assert (=> mapNonEmpty!17292 (= mapRes!17292 (and tp!33413 e!245425))))

(declare-fun mapRest!17292 () (Array (_ BitVec 32) ValueCell!4880))

(declare-fun mapKey!17292 () (_ BitVec 32))

(declare-fun mapValue!17292 () ValueCell!4880)

(assert (=> mapNonEmpty!17292 (= (arr!11821 _values!549) (store mapRest!17292 mapKey!17292 mapValue!17292))))

(declare-fun b!409057 () Bool)

(declare-fun res!236889 () Bool)

(assert (=> b!409057 (=> (not res!236889) (not e!245421))))

(assert (=> b!409057 (= res!236889 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12172 _keys!709))))))

(declare-fun mapIsEmpty!17292 () Bool)

(assert (=> mapIsEmpty!17292 mapRes!17292))

(declare-fun b!409058 () Bool)

(declare-fun res!236893 () Bool)

(assert (=> b!409058 (=> (not res!236893) (not e!245421))))

(declare-datatypes ((List!6823 0))(
  ( (Nil!6820) (Cons!6819 (h!7675 (_ BitVec 64)) (t!12005 List!6823)) )
))
(declare-fun arrayNoDuplicates!0 (array!24747 (_ BitVec 32) List!6823) Bool)

(assert (=> b!409058 (= res!236893 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6820))))

(declare-fun b!409059 () Bool)

(assert (=> b!409059 (= e!245421 e!245420)))

(declare-fun res!236898 () Bool)

(assert (=> b!409059 (=> (not res!236898) (not e!245420))))

(declare-fun lt!188883 () array!24747)

(assert (=> b!409059 (= res!236898 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188883 mask!1025))))

(assert (=> b!409059 (= lt!188883 (array!24748 (store (arr!11820 _keys!709) i!563 k!794) (size!12172 _keys!709)))))

(declare-fun b!409060 () Bool)

(assert (=> b!409060 (= e!245424 (and e!245422 mapRes!17292))))

(declare-fun condMapEmpty!17292 () Bool)

(declare-fun mapDefault!17292 () ValueCell!4880)

