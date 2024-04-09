; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39160 () Bool)

(assert start!39160)

(declare-fun b_free!9419 () Bool)

(declare-fun b_next!9419 () Bool)

(assert (=> start!39160 (= b_free!9419 (not b_next!9419))))

(declare-fun tp!33785 () Bool)

(declare-fun b_and!16823 () Bool)

(assert (=> start!39160 (= tp!33785 b_and!16823)))

(declare-fun b!411837 () Bool)

(declare-fun res!239122 () Bool)

(declare-fun e!246541 () Bool)

(assert (=> b!411837 (=> (not res!239122) (not e!246541))))

(declare-datatypes ((array!24983 0))(
  ( (array!24984 (arr!11938 (Array (_ BitVec 32) (_ BitVec 64))) (size!12290 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24983)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24983 (_ BitVec 32)) Bool)

(assert (=> b!411837 (= res!239122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!239129 () Bool)

(assert (=> start!39160 (=> (not res!239129) (not e!246541))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39160 (= res!239129 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12290 _keys!709))))))

(assert (=> start!39160 e!246541))

(declare-fun tp_is_empty!10571 () Bool)

(assert (=> start!39160 tp_is_empty!10571))

(assert (=> start!39160 tp!33785))

(assert (=> start!39160 true))

(declare-datatypes ((V!15199 0))(
  ( (V!15200 (val!5330 Int)) )
))
(declare-datatypes ((ValueCell!4942 0))(
  ( (ValueCellFull!4942 (v!7573 V!15199)) (EmptyCell!4942) )
))
(declare-datatypes ((array!24985 0))(
  ( (array!24986 (arr!11939 (Array (_ BitVec 32) ValueCell!4942)) (size!12291 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24985)

(declare-fun e!246538 () Bool)

(declare-fun array_inv!8710 (array!24985) Bool)

(assert (=> start!39160 (and (array_inv!8710 _values!549) e!246538)))

(declare-fun array_inv!8711 (array!24983) Bool)

(assert (=> start!39160 (array_inv!8711 _keys!709)))

(declare-fun b!411838 () Bool)

(declare-fun e!246540 () Bool)

(assert (=> b!411838 (= e!246540 tp_is_empty!10571)))

(declare-fun b!411839 () Bool)

(declare-fun e!246537 () Bool)

(assert (=> b!411839 (= e!246541 e!246537)))

(declare-fun res!239123 () Bool)

(assert (=> b!411839 (=> (not res!239123) (not e!246537))))

(declare-fun lt!189363 () array!24983)

(assert (=> b!411839 (= res!239123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189363 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!411839 (= lt!189363 (array!24984 (store (arr!11938 _keys!709) i!563 k!794) (size!12290 _keys!709)))))

(declare-fun b!411840 () Bool)

(declare-fun res!239124 () Bool)

(assert (=> b!411840 (=> (not res!239124) (not e!246541))))

(declare-datatypes ((List!6900 0))(
  ( (Nil!6897) (Cons!6896 (h!7752 (_ BitVec 64)) (t!12082 List!6900)) )
))
(declare-fun arrayNoDuplicates!0 (array!24983 (_ BitVec 32) List!6900) Bool)

(assert (=> b!411840 (= res!239124 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6897))))

(declare-fun b!411841 () Bool)

(declare-fun res!239130 () Bool)

(assert (=> b!411841 (=> (not res!239130) (not e!246537))))

(assert (=> b!411841 (= res!239130 (bvsle from!863 i!563))))

(declare-fun b!411842 () Bool)

(declare-fun res!239127 () Bool)

(assert (=> b!411842 (=> (not res!239127) (not e!246541))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!411842 (= res!239127 (and (= (size!12291 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12290 _keys!709) (size!12291 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!411843 () Bool)

(assert (=> b!411843 (= e!246537 false)))

(declare-fun minValue!515 () V!15199)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15199)

(declare-fun v!412 () V!15199)

(declare-datatypes ((tuple2!6844 0))(
  ( (tuple2!6845 (_1!3432 (_ BitVec 64)) (_2!3432 V!15199)) )
))
(declare-datatypes ((List!6901 0))(
  ( (Nil!6898) (Cons!6897 (h!7753 tuple2!6844) (t!12083 List!6901)) )
))
(declare-datatypes ((ListLongMap!5771 0))(
  ( (ListLongMap!5772 (toList!2901 List!6901)) )
))
(declare-fun lt!189362 () ListLongMap!5771)

(declare-fun getCurrentListMapNoExtraKeys!1111 (array!24983 array!24985 (_ BitVec 32) (_ BitVec 32) V!15199 V!15199 (_ BitVec 32) Int) ListLongMap!5771)

(assert (=> b!411843 (= lt!189362 (getCurrentListMapNoExtraKeys!1111 lt!189363 (array!24986 (store (arr!11939 _values!549) i!563 (ValueCellFull!4942 v!412)) (size!12291 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189361 () ListLongMap!5771)

(assert (=> b!411843 (= lt!189361 (getCurrentListMapNoExtraKeys!1111 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapIsEmpty!17478 () Bool)

(declare-fun mapRes!17478 () Bool)

(assert (=> mapIsEmpty!17478 mapRes!17478))

(declare-fun b!411844 () Bool)

(declare-fun res!239125 () Bool)

(assert (=> b!411844 (=> (not res!239125) (not e!246541))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!411844 (= res!239125 (validMask!0 mask!1025))))

(declare-fun b!411845 () Bool)

(declare-fun res!239121 () Bool)

(assert (=> b!411845 (=> (not res!239121) (not e!246541))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!411845 (= res!239121 (validKeyInArray!0 k!794))))

(declare-fun b!411846 () Bool)

(declare-fun res!239128 () Bool)

(assert (=> b!411846 (=> (not res!239128) (not e!246537))))

(assert (=> b!411846 (= res!239128 (arrayNoDuplicates!0 lt!189363 #b00000000000000000000000000000000 Nil!6897))))

(declare-fun b!411847 () Bool)

(declare-fun res!239126 () Bool)

(assert (=> b!411847 (=> (not res!239126) (not e!246541))))

(declare-fun arrayContainsKey!0 (array!24983 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!411847 (= res!239126 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!411848 () Bool)

(declare-fun res!239120 () Bool)

(assert (=> b!411848 (=> (not res!239120) (not e!246541))))

(assert (=> b!411848 (= res!239120 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12290 _keys!709))))))

(declare-fun b!411849 () Bool)

(assert (=> b!411849 (= e!246538 (and e!246540 mapRes!17478))))

(declare-fun condMapEmpty!17478 () Bool)

(declare-fun mapDefault!17478 () ValueCell!4942)

