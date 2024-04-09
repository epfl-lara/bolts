; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39088 () Bool)

(assert start!39088)

(declare-fun b_free!9347 () Bool)

(declare-fun b_next!9347 () Bool)

(assert (=> start!39088 (= b_free!9347 (not b_next!9347))))

(declare-fun tp!33569 () Bool)

(declare-fun b_and!16751 () Bool)

(assert (=> start!39088 (= tp!33569 b_and!16751)))

(declare-fun b!410217 () Bool)

(declare-fun res!237834 () Bool)

(declare-fun e!245892 () Bool)

(assert (=> b!410217 (=> (not res!237834) (not e!245892))))

(declare-datatypes ((array!24847 0))(
  ( (array!24848 (arr!11870 (Array (_ BitVec 32) (_ BitVec 64))) (size!12222 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24847)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15103 0))(
  ( (V!15104 (val!5294 Int)) )
))
(declare-datatypes ((ValueCell!4906 0))(
  ( (ValueCellFull!4906 (v!7537 V!15103)) (EmptyCell!4906) )
))
(declare-datatypes ((array!24849 0))(
  ( (array!24850 (arr!11871 (Array (_ BitVec 32) ValueCell!4906)) (size!12223 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24849)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!410217 (= res!237834 (and (= (size!12223 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12222 _keys!709) (size!12223 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!410218 () Bool)

(declare-fun res!237832 () Bool)

(assert (=> b!410218 (=> (not res!237832) (not e!245892))))

(declare-datatypes ((List!6856 0))(
  ( (Nil!6853) (Cons!6852 (h!7708 (_ BitVec 64)) (t!12038 List!6856)) )
))
(declare-fun arrayNoDuplicates!0 (array!24847 (_ BitVec 32) List!6856) Bool)

(assert (=> b!410218 (= res!237832 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6853))))

(declare-fun b!410219 () Bool)

(declare-fun res!237828 () Bool)

(assert (=> b!410219 (=> (not res!237828) (not e!245892))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24847 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!410219 (= res!237828 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!410220 () Bool)

(declare-fun e!245891 () Bool)

(declare-fun tp_is_empty!10499 () Bool)

(assert (=> b!410220 (= e!245891 tp_is_empty!10499)))

(declare-fun b!410221 () Bool)

(declare-fun e!245893 () Bool)

(assert (=> b!410221 (= e!245893 false)))

(declare-fun minValue!515 () V!15103)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15103)

(declare-datatypes ((tuple2!6802 0))(
  ( (tuple2!6803 (_1!3411 (_ BitVec 64)) (_2!3411 V!15103)) )
))
(declare-datatypes ((List!6857 0))(
  ( (Nil!6854) (Cons!6853 (h!7709 tuple2!6802) (t!12039 List!6857)) )
))
(declare-datatypes ((ListLongMap!5729 0))(
  ( (ListLongMap!5730 (toList!2880 List!6857)) )
))
(declare-fun lt!189038 () ListLongMap!5729)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1090 (array!24847 array!24849 (_ BitVec 32) (_ BitVec 32) V!15103 V!15103 (_ BitVec 32) Int) ListLongMap!5729)

(assert (=> b!410221 (= lt!189038 (getCurrentListMapNoExtraKeys!1090 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!410222 () Bool)

(declare-fun res!237825 () Bool)

(assert (=> b!410222 (=> (not res!237825) (not e!245892))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!410222 (= res!237825 (or (= (select (arr!11870 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11870 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!237830 () Bool)

(assert (=> start!39088 (=> (not res!237830) (not e!245892))))

(assert (=> start!39088 (= res!237830 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12222 _keys!709))))))

(assert (=> start!39088 e!245892))

(assert (=> start!39088 tp_is_empty!10499))

(assert (=> start!39088 tp!33569))

(assert (=> start!39088 true))

(declare-fun e!245889 () Bool)

(declare-fun array_inv!8666 (array!24849) Bool)

(assert (=> start!39088 (and (array_inv!8666 _values!549) e!245889)))

(declare-fun array_inv!8667 (array!24847) Bool)

(assert (=> start!39088 (array_inv!8667 _keys!709)))

(declare-fun b!410223 () Bool)

(assert (=> b!410223 (= e!245892 e!245893)))

(declare-fun res!237826 () Bool)

(assert (=> b!410223 (=> (not res!237826) (not e!245893))))

(declare-fun lt!189039 () array!24847)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24847 (_ BitVec 32)) Bool)

(assert (=> b!410223 (= res!237826 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189039 mask!1025))))

(assert (=> b!410223 (= lt!189039 (array!24848 (store (arr!11870 _keys!709) i!563 k!794) (size!12222 _keys!709)))))

(declare-fun mapIsEmpty!17370 () Bool)

(declare-fun mapRes!17370 () Bool)

(assert (=> mapIsEmpty!17370 mapRes!17370))

(declare-fun b!410224 () Bool)

(declare-fun res!237827 () Bool)

(assert (=> b!410224 (=> (not res!237827) (not e!245892))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!410224 (= res!237827 (validMask!0 mask!1025))))

(declare-fun b!410225 () Bool)

(declare-fun res!237829 () Bool)

(assert (=> b!410225 (=> (not res!237829) (not e!245892))))

(assert (=> b!410225 (= res!237829 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12222 _keys!709))))))

(declare-fun b!410226 () Bool)

(declare-fun e!245888 () Bool)

(assert (=> b!410226 (= e!245889 (and e!245888 mapRes!17370))))

(declare-fun condMapEmpty!17370 () Bool)

(declare-fun mapDefault!17370 () ValueCell!4906)

