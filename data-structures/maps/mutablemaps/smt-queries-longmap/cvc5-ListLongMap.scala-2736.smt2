; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40242 () Bool)

(assert start!40242)

(declare-fun b_free!10501 () Bool)

(declare-fun b_next!10501 () Bool)

(assert (=> start!40242 (= b_free!10501 (not b_next!10501))))

(declare-fun tp!37031 () Bool)

(declare-fun b_and!18487 () Bool)

(assert (=> start!40242 (= tp!37031 b_and!18487)))

(declare-fun res!261222 () Bool)

(declare-fun e!259801 () Bool)

(assert (=> start!40242 (=> (not res!261222) (not e!259801))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!27093 0))(
  ( (array!27094 (arr!12993 (Array (_ BitVec 32) (_ BitVec 64))) (size!13345 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27093)

(assert (=> start!40242 (= res!261222 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13345 _keys!709))))))

(assert (=> start!40242 e!259801))

(declare-fun tp_is_empty!11653 () Bool)

(assert (=> start!40242 tp_is_empty!11653))

(assert (=> start!40242 tp!37031))

(assert (=> start!40242 true))

(declare-datatypes ((V!16643 0))(
  ( (V!16644 (val!5871 Int)) )
))
(declare-datatypes ((ValueCell!5483 0))(
  ( (ValueCellFull!5483 (v!8114 V!16643)) (EmptyCell!5483) )
))
(declare-datatypes ((array!27095 0))(
  ( (array!27096 (arr!12994 (Array (_ BitVec 32) ValueCell!5483)) (size!13346 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27095)

(declare-fun e!259796 () Bool)

(declare-fun array_inv!9422 (array!27095) Bool)

(assert (=> start!40242 (and (array_inv!9422 _values!549) e!259796)))

(declare-fun array_inv!9423 (array!27093) Bool)

(assert (=> start!40242 (array_inv!9423 _keys!709)))

(declare-fun b!441185 () Bool)

(declare-fun e!259795 () Bool)

(assert (=> b!441185 (= e!259795 tp_is_empty!11653)))

(declare-fun b!441186 () Bool)

(declare-fun e!259800 () Bool)

(assert (=> b!441186 (= e!259801 e!259800)))

(declare-fun res!261225 () Bool)

(assert (=> b!441186 (=> (not res!261225) (not e!259800))))

(declare-fun lt!202841 () array!27093)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27093 (_ BitVec 32)) Bool)

(assert (=> b!441186 (= res!261225 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202841 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!441186 (= lt!202841 (array!27094 (store (arr!12993 _keys!709) i!563 k!794) (size!13345 _keys!709)))))

(declare-fun b!441187 () Bool)

(declare-fun e!259799 () Bool)

(assert (=> b!441187 (= e!259799 (not true))))

(declare-fun minValue!515 () V!16643)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16643)

(declare-fun v!412 () V!16643)

(declare-fun lt!202840 () array!27095)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!7732 0))(
  ( (tuple2!7733 (_1!3876 (_ BitVec 64)) (_2!3876 V!16643)) )
))
(declare-datatypes ((List!7774 0))(
  ( (Nil!7771) (Cons!7770 (h!8626 tuple2!7732) (t!13538 List!7774)) )
))
(declare-datatypes ((ListLongMap!6659 0))(
  ( (ListLongMap!6660 (toList!3345 List!7774)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1527 (array!27093 array!27095 (_ BitVec 32) (_ BitVec 32) V!16643 V!16643 (_ BitVec 32) Int) ListLongMap!6659)

(declare-fun +!1479 (ListLongMap!6659 tuple2!7732) ListLongMap!6659)

(assert (=> b!441187 (= (getCurrentListMapNoExtraKeys!1527 lt!202841 lt!202840 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1479 (getCurrentListMapNoExtraKeys!1527 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7733 k!794 v!412)))))

(declare-datatypes ((Unit!13073 0))(
  ( (Unit!13074) )
))
(declare-fun lt!202842 () Unit!13073)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!657 (array!27093 array!27095 (_ BitVec 32) (_ BitVec 32) V!16643 V!16643 (_ BitVec 32) (_ BitVec 64) V!16643 (_ BitVec 32) Int) Unit!13073)

(assert (=> b!441187 (= lt!202842 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!657 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!441188 () Bool)

(declare-fun res!261227 () Bool)

(assert (=> b!441188 (=> (not res!261227) (not e!259800))))

(assert (=> b!441188 (= res!261227 (bvsle from!863 i!563))))

(declare-fun b!441189 () Bool)

(declare-fun res!261224 () Bool)

(assert (=> b!441189 (=> (not res!261224) (not e!259801))))

(declare-datatypes ((List!7775 0))(
  ( (Nil!7772) (Cons!7771 (h!8627 (_ BitVec 64)) (t!13539 List!7775)) )
))
(declare-fun arrayNoDuplicates!0 (array!27093 (_ BitVec 32) List!7775) Bool)

(assert (=> b!441189 (= res!261224 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7772))))

(declare-fun b!441190 () Bool)

(declare-fun res!261219 () Bool)

(assert (=> b!441190 (=> (not res!261219) (not e!259801))))

(assert (=> b!441190 (= res!261219 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!441191 () Bool)

(assert (=> b!441191 (= e!259800 e!259799)))

(declare-fun res!261226 () Bool)

(assert (=> b!441191 (=> (not res!261226) (not e!259799))))

(assert (=> b!441191 (= res!261226 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!202839 () ListLongMap!6659)

(assert (=> b!441191 (= lt!202839 (getCurrentListMapNoExtraKeys!1527 lt!202841 lt!202840 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!441191 (= lt!202840 (array!27096 (store (arr!12994 _values!549) i!563 (ValueCellFull!5483 v!412)) (size!13346 _values!549)))))

(declare-fun lt!202838 () ListLongMap!6659)

(assert (=> b!441191 (= lt!202838 (getCurrentListMapNoExtraKeys!1527 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapIsEmpty!19101 () Bool)

(declare-fun mapRes!19101 () Bool)

(assert (=> mapIsEmpty!19101 mapRes!19101))

(declare-fun b!441192 () Bool)

(declare-fun res!261217 () Bool)

(assert (=> b!441192 (=> (not res!261217) (not e!259801))))

(assert (=> b!441192 (= res!261217 (and (= (size!13346 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13345 _keys!709) (size!13346 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!441193 () Bool)

(declare-fun res!261228 () Bool)

(assert (=> b!441193 (=> (not res!261228) (not e!259801))))

(assert (=> b!441193 (= res!261228 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13345 _keys!709))))))

(declare-fun b!441194 () Bool)

(declare-fun e!259798 () Bool)

(assert (=> b!441194 (= e!259796 (and e!259798 mapRes!19101))))

(declare-fun condMapEmpty!19101 () Bool)

(declare-fun mapDefault!19101 () ValueCell!5483)

