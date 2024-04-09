; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40994 () Bool)

(assert start!40994)

(declare-fun b_free!10921 () Bool)

(declare-fun b_next!10921 () Bool)

(assert (=> start!40994 (= b_free!10921 (not b_next!10921))))

(declare-fun tp!38589 () Bool)

(declare-fun b_and!19081 () Bool)

(assert (=> start!40994 (= tp!38589 b_and!19081)))

(declare-fun b!456154 () Bool)

(declare-fun res!272256 () Bool)

(declare-fun e!266542 () Bool)

(assert (=> b!456154 (=> (not res!272256) (not e!266542))))

(declare-datatypes ((array!28285 0))(
  ( (array!28286 (arr!13583 (Array (_ BitVec 32) (_ BitVec 64))) (size!13935 (_ BitVec 32))) )
))
(declare-fun lt!206487 () array!28285)

(declare-datatypes ((List!8195 0))(
  ( (Nil!8192) (Cons!8191 (h!9047 (_ BitVec 64)) (t!14031 List!8195)) )
))
(declare-fun arrayNoDuplicates!0 (array!28285 (_ BitVec 32) List!8195) Bool)

(assert (=> b!456154 (= res!272256 (arrayNoDuplicates!0 lt!206487 #b00000000000000000000000000000000 Nil!8192))))

(declare-fun b!456155 () Bool)

(declare-fun e!266543 () Bool)

(declare-fun tp_is_empty!12259 () Bool)

(assert (=> b!456155 (= e!266543 tp_is_empty!12259)))

(declare-fun b!456156 () Bool)

(declare-fun res!272252 () Bool)

(declare-fun e!266539 () Bool)

(assert (=> b!456156 (=> (not res!272252) (not e!266539))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!456156 (= res!272252 (validKeyInArray!0 k!794))))

(declare-fun b!456157 () Bool)

(declare-fun e!266538 () Bool)

(assert (=> b!456157 (= e!266542 e!266538)))

(declare-fun res!272249 () Bool)

(assert (=> b!456157 (=> (not res!272249) (not e!266538))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!456157 (= res!272249 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!17451 0))(
  ( (V!17452 (val!6174 Int)) )
))
(declare-datatypes ((tuple2!8088 0))(
  ( (tuple2!8089 (_1!4054 (_ BitVec 64)) (_2!4054 V!17451)) )
))
(declare-datatypes ((List!8196 0))(
  ( (Nil!8193) (Cons!8192 (h!9048 tuple2!8088) (t!14032 List!8196)) )
))
(declare-datatypes ((ListLongMap!7015 0))(
  ( (ListLongMap!7016 (toList!3523 List!8196)) )
))
(declare-fun lt!206486 () ListLongMap!7015)

(declare-fun minValue!515 () V!17451)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17451)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5786 0))(
  ( (ValueCellFull!5786 (v!8436 V!17451)) (EmptyCell!5786) )
))
(declare-datatypes ((array!28287 0))(
  ( (array!28288 (arr!13584 (Array (_ BitVec 32) ValueCell!5786)) (size!13936 (_ BitVec 32))) )
))
(declare-fun lt!206484 () array!28287)

(declare-fun getCurrentListMapNoExtraKeys!1699 (array!28285 array!28287 (_ BitVec 32) (_ BitVec 32) V!17451 V!17451 (_ BitVec 32) Int) ListLongMap!7015)

(assert (=> b!456157 (= lt!206486 (getCurrentListMapNoExtraKeys!1699 lt!206487 lt!206484 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!28287)

(declare-fun v!412 () V!17451)

(assert (=> b!456157 (= lt!206484 (array!28288 (store (arr!13584 _values!549) i!563 (ValueCellFull!5786 v!412)) (size!13936 _values!549)))))

(declare-fun lt!206485 () ListLongMap!7015)

(declare-fun _keys!709 () array!28285)

(assert (=> b!456157 (= lt!206485 (getCurrentListMapNoExtraKeys!1699 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun res!272255 () Bool)

(assert (=> start!40994 (=> (not res!272255) (not e!266539))))

(assert (=> start!40994 (= res!272255 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13935 _keys!709))))))

(assert (=> start!40994 e!266539))

(assert (=> start!40994 tp_is_empty!12259))

(assert (=> start!40994 tp!38589))

(assert (=> start!40994 true))

(declare-fun e!266541 () Bool)

(declare-fun array_inv!9828 (array!28287) Bool)

(assert (=> start!40994 (and (array_inv!9828 _values!549) e!266541)))

(declare-fun array_inv!9829 (array!28285) Bool)

(assert (=> start!40994 (array_inv!9829 _keys!709)))

(declare-fun b!456158 () Bool)

(declare-fun res!272260 () Bool)

(assert (=> b!456158 (=> (not res!272260) (not e!266539))))

(assert (=> b!456158 (= res!272260 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13935 _keys!709))))))

(declare-fun b!456159 () Bool)

(declare-fun e!266537 () Bool)

(assert (=> b!456159 (= e!266537 tp_is_empty!12259)))

(declare-fun b!456160 () Bool)

(assert (=> b!456160 (= e!266539 e!266542)))

(declare-fun res!272253 () Bool)

(assert (=> b!456160 (=> (not res!272253) (not e!266542))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28285 (_ BitVec 32)) Bool)

(assert (=> b!456160 (= res!272253 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206487 mask!1025))))

(assert (=> b!456160 (= lt!206487 (array!28286 (store (arr!13583 _keys!709) i!563 k!794) (size!13935 _keys!709)))))

(declare-fun b!456161 () Bool)

(declare-fun res!272257 () Bool)

(assert (=> b!456161 (=> (not res!272257) (not e!266539))))

(assert (=> b!456161 (= res!272257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!456162 () Bool)

(assert (=> b!456162 (= e!266538 (not (bvslt from!863 (size!13935 _keys!709))))))

(declare-fun +!1547 (ListLongMap!7015 tuple2!8088) ListLongMap!7015)

(assert (=> b!456162 (= (getCurrentListMapNoExtraKeys!1699 lt!206487 lt!206484 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1547 (getCurrentListMapNoExtraKeys!1699 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!8089 k!794 v!412)))))

(declare-datatypes ((Unit!13219 0))(
  ( (Unit!13220) )
))
(declare-fun lt!206483 () Unit!13219)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!712 (array!28285 array!28287 (_ BitVec 32) (_ BitVec 32) V!17451 V!17451 (_ BitVec 32) (_ BitVec 64) V!17451 (_ BitVec 32) Int) Unit!13219)

(assert (=> b!456162 (= lt!206483 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!712 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!20029 () Bool)

(declare-fun mapRes!20029 () Bool)

(declare-fun tp!38590 () Bool)

(assert (=> mapNonEmpty!20029 (= mapRes!20029 (and tp!38590 e!266537))))

(declare-fun mapRest!20029 () (Array (_ BitVec 32) ValueCell!5786))

(declare-fun mapValue!20029 () ValueCell!5786)

(declare-fun mapKey!20029 () (_ BitVec 32))

(assert (=> mapNonEmpty!20029 (= (arr!13584 _values!549) (store mapRest!20029 mapKey!20029 mapValue!20029))))

(declare-fun b!456163 () Bool)

(declare-fun res!272259 () Bool)

(assert (=> b!456163 (=> (not res!272259) (not e!266539))))

(assert (=> b!456163 (= res!272259 (and (= (size!13936 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13935 _keys!709) (size!13936 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!456164 () Bool)

(declare-fun res!272250 () Bool)

(assert (=> b!456164 (=> (not res!272250) (not e!266539))))

(declare-fun arrayContainsKey!0 (array!28285 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!456164 (= res!272250 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!20029 () Bool)

(assert (=> mapIsEmpty!20029 mapRes!20029))

(declare-fun b!456165 () Bool)

(assert (=> b!456165 (= e!266541 (and e!266543 mapRes!20029))))

(declare-fun condMapEmpty!20029 () Bool)

(declare-fun mapDefault!20029 () ValueCell!5786)

