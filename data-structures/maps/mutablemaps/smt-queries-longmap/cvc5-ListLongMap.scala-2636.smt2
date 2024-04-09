; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39642 () Bool)

(assert start!39642)

(declare-fun b_free!9901 () Bool)

(declare-fun b_next!9901 () Bool)

(assert (=> start!39642 (= b_free!9901 (not b_next!9901))))

(declare-fun tp!35232 () Bool)

(declare-fun b_and!17575 () Bool)

(assert (=> start!39642 (= tp!35232 b_and!17575)))

(declare-fun res!248726 () Bool)

(declare-fun e!252282 () Bool)

(assert (=> start!39642 (=> (not res!248726) (not e!252282))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!25933 0))(
  ( (array!25934 (arr!12413 (Array (_ BitVec 32) (_ BitVec 64))) (size!12765 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25933)

(assert (=> start!39642 (= res!248726 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12765 _keys!709))))))

(assert (=> start!39642 e!252282))

(declare-fun tp_is_empty!11053 () Bool)

(assert (=> start!39642 tp_is_empty!11053))

(assert (=> start!39642 tp!35232))

(assert (=> start!39642 true))

(declare-datatypes ((V!15843 0))(
  ( (V!15844 (val!5571 Int)) )
))
(declare-datatypes ((ValueCell!5183 0))(
  ( (ValueCellFull!5183 (v!7814 V!15843)) (EmptyCell!5183) )
))
(declare-datatypes ((array!25935 0))(
  ( (array!25936 (arr!12414 (Array (_ BitVec 32) ValueCell!5183)) (size!12766 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25935)

(declare-fun e!252280 () Bool)

(declare-fun array_inv!9050 (array!25935) Bool)

(assert (=> start!39642 (and (array_inv!9050 _values!549) e!252280)))

(declare-fun array_inv!9051 (array!25933) Bool)

(assert (=> start!39642 (array_inv!9051 _keys!709)))

(declare-fun b!424844 () Bool)

(declare-fun res!248725 () Bool)

(assert (=> b!424844 (=> (not res!248725) (not e!252282))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!424844 (= res!248725 (or (= (select (arr!12413 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12413 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!18201 () Bool)

(declare-fun mapRes!18201 () Bool)

(assert (=> mapIsEmpty!18201 mapRes!18201))

(declare-fun b!424845 () Bool)

(declare-fun e!252286 () Bool)

(declare-fun e!252283 () Bool)

(assert (=> b!424845 (= e!252286 e!252283)))

(declare-fun res!248727 () Bool)

(assert (=> b!424845 (=> (not res!248727) (not e!252283))))

(assert (=> b!424845 (= res!248727 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((tuple2!7254 0))(
  ( (tuple2!7255 (_1!3637 (_ BitVec 64)) (_2!3637 V!15843)) )
))
(declare-datatypes ((List!7298 0))(
  ( (Nil!7295) (Cons!7294 (h!8150 tuple2!7254) (t!12750 List!7298)) )
))
(declare-datatypes ((ListLongMap!6181 0))(
  ( (ListLongMap!6182 (toList!3106 List!7298)) )
))
(declare-fun lt!194490 () ListLongMap!6181)

(declare-fun minValue!515 () V!15843)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15843)

(declare-fun lt!194489 () array!25933)

(declare-fun lt!194486 () array!25935)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1307 (array!25933 array!25935 (_ BitVec 32) (_ BitVec 32) V!15843 V!15843 (_ BitVec 32) Int) ListLongMap!6181)

(assert (=> b!424845 (= lt!194490 (getCurrentListMapNoExtraKeys!1307 lt!194489 lt!194486 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15843)

(assert (=> b!424845 (= lt!194486 (array!25936 (store (arr!12414 _values!549) i!563 (ValueCellFull!5183 v!412)) (size!12766 _values!549)))))

(declare-fun lt!194487 () ListLongMap!6181)

(assert (=> b!424845 (= lt!194487 (getCurrentListMapNoExtraKeys!1307 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!424846 () Bool)

(declare-fun res!248723 () Bool)

(assert (=> b!424846 (=> (not res!248723) (not e!252286))))

(declare-datatypes ((List!7299 0))(
  ( (Nil!7296) (Cons!7295 (h!8151 (_ BitVec 64)) (t!12751 List!7299)) )
))
(declare-fun arrayNoDuplicates!0 (array!25933 (_ BitVec 32) List!7299) Bool)

(assert (=> b!424846 (= res!248723 (arrayNoDuplicates!0 lt!194489 #b00000000000000000000000000000000 Nil!7296))))

(declare-fun mapNonEmpty!18201 () Bool)

(declare-fun tp!35231 () Bool)

(declare-fun e!252281 () Bool)

(assert (=> mapNonEmpty!18201 (= mapRes!18201 (and tp!35231 e!252281))))

(declare-fun mapRest!18201 () (Array (_ BitVec 32) ValueCell!5183))

(declare-fun mapValue!18201 () ValueCell!5183)

(declare-fun mapKey!18201 () (_ BitVec 32))

(assert (=> mapNonEmpty!18201 (= (arr!12414 _values!549) (store mapRest!18201 mapKey!18201 mapValue!18201))))

(declare-fun b!424847 () Bool)

(assert (=> b!424847 (= e!252282 e!252286)))

(declare-fun res!248722 () Bool)

(assert (=> b!424847 (=> (not res!248722) (not e!252286))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25933 (_ BitVec 32)) Bool)

(assert (=> b!424847 (= res!248722 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194489 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!424847 (= lt!194489 (array!25934 (store (arr!12413 _keys!709) i!563 k!794) (size!12765 _keys!709)))))

(declare-fun b!424848 () Bool)

(declare-fun res!248724 () Bool)

(assert (=> b!424848 (=> (not res!248724) (not e!252282))))

(assert (=> b!424848 (= res!248724 (and (= (size!12766 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12765 _keys!709) (size!12766 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!424849 () Bool)

(declare-fun res!248721 () Bool)

(assert (=> b!424849 (=> (not res!248721) (not e!252286))))

(assert (=> b!424849 (= res!248721 (bvsle from!863 i!563))))

(declare-fun b!424850 () Bool)

(assert (=> b!424850 (= e!252283 (not true))))

(declare-fun +!1267 (ListLongMap!6181 tuple2!7254) ListLongMap!6181)

(assert (=> b!424850 (= (getCurrentListMapNoExtraKeys!1307 lt!194489 lt!194486 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1267 (getCurrentListMapNoExtraKeys!1307 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7255 k!794 v!412)))))

(declare-datatypes ((Unit!12437 0))(
  ( (Unit!12438) )
))
(declare-fun lt!194488 () Unit!12437)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!469 (array!25933 array!25935 (_ BitVec 32) (_ BitVec 32) V!15843 V!15843 (_ BitVec 32) (_ BitVec 64) V!15843 (_ BitVec 32) Int) Unit!12437)

(assert (=> b!424850 (= lt!194488 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!469 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!424851 () Bool)

(declare-fun e!252285 () Bool)

(assert (=> b!424851 (= e!252285 tp_is_empty!11053)))

(declare-fun b!424852 () Bool)

(declare-fun res!248717 () Bool)

(assert (=> b!424852 (=> (not res!248717) (not e!252282))))

(assert (=> b!424852 (= res!248717 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7296))))

(declare-fun b!424853 () Bool)

(declare-fun res!248715 () Bool)

(assert (=> b!424853 (=> (not res!248715) (not e!252282))))

(assert (=> b!424853 (= res!248715 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!424854 () Bool)

(declare-fun res!248719 () Bool)

(assert (=> b!424854 (=> (not res!248719) (not e!252282))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!424854 (= res!248719 (validMask!0 mask!1025))))

(declare-fun b!424855 () Bool)

(declare-fun res!248718 () Bool)

(assert (=> b!424855 (=> (not res!248718) (not e!252282))))

(declare-fun arrayContainsKey!0 (array!25933 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!424855 (= res!248718 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!424856 () Bool)

(declare-fun res!248720 () Bool)

(assert (=> b!424856 (=> (not res!248720) (not e!252282))))

(assert (=> b!424856 (= res!248720 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12765 _keys!709))))))

(declare-fun b!424857 () Bool)

(assert (=> b!424857 (= e!252280 (and e!252285 mapRes!18201))))

(declare-fun condMapEmpty!18201 () Bool)

(declare-fun mapDefault!18201 () ValueCell!5183)

