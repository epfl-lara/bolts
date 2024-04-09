; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39994 () Bool)

(assert start!39994)

(declare-fun b_free!10253 () Bool)

(declare-fun b_next!10253 () Bool)

(assert (=> start!39994 (= b_free!10253 (not b_next!10253))))

(declare-fun tp!36287 () Bool)

(declare-fun b_and!18183 () Bool)

(assert (=> start!39994 (= tp!36287 b_and!18183)))

(declare-fun b!434849 () Bool)

(declare-datatypes ((Unit!12862 0))(
  ( (Unit!12863) )
))
(declare-fun e!256946 () Unit!12862)

(declare-fun Unit!12864 () Unit!12862)

(assert (=> b!434849 (= e!256946 Unit!12864)))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lt!200160 () Unit!12862)

(declare-datatypes ((array!26615 0))(
  ( (array!26616 (arr!12754 (Array (_ BitVec 32) (_ BitVec 64))) (size!13106 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26615)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26615 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12862)

(assert (=> b!434849 (= lt!200160 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!434849 false))

(declare-fun b!434850 () Bool)

(declare-fun res!256225 () Bool)

(declare-fun e!256952 () Bool)

(assert (=> b!434850 (=> (not res!256225) (not e!256952))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!434850 (= res!256225 (validMask!0 mask!1025))))

(declare-fun b!434851 () Bool)

(declare-fun Unit!12865 () Unit!12862)

(assert (=> b!434851 (= e!256946 Unit!12865)))

(declare-fun b!434852 () Bool)

(declare-fun e!256948 () Bool)

(declare-fun e!256949 () Bool)

(assert (=> b!434852 (= e!256948 e!256949)))

(declare-fun res!256226 () Bool)

(assert (=> b!434852 (=> res!256226 e!256949)))

(assert (=> b!434852 (= res!256226 (= k!794 (select (arr!12754 _keys!709) from!863)))))

(assert (=> b!434852 (not (= (select (arr!12754 _keys!709) from!863) k!794))))

(declare-fun lt!200168 () Unit!12862)

(assert (=> b!434852 (= lt!200168 e!256946)))

(declare-fun c!55640 () Bool)

(assert (=> b!434852 (= c!55640 (= (select (arr!12754 _keys!709) from!863) k!794))))

(declare-datatypes ((V!16311 0))(
  ( (V!16312 (val!5747 Int)) )
))
(declare-datatypes ((tuple2!7538 0))(
  ( (tuple2!7539 (_1!3779 (_ BitVec 64)) (_2!3779 V!16311)) )
))
(declare-datatypes ((List!7585 0))(
  ( (Nil!7582) (Cons!7581 (h!8437 tuple2!7538) (t!13295 List!7585)) )
))
(declare-datatypes ((ListLongMap!6465 0))(
  ( (ListLongMap!6466 (toList!3248 List!7585)) )
))
(declare-fun lt!200162 () ListLongMap!6465)

(declare-fun lt!200172 () ListLongMap!6465)

(assert (=> b!434852 (= lt!200162 lt!200172)))

(declare-fun lt!200164 () ListLongMap!6465)

(declare-fun lt!200170 () tuple2!7538)

(declare-fun +!1393 (ListLongMap!6465 tuple2!7538) ListLongMap!6465)

(assert (=> b!434852 (= lt!200172 (+!1393 lt!200164 lt!200170))))

(declare-fun lt!200165 () V!16311)

(assert (=> b!434852 (= lt!200170 (tuple2!7539 (select (arr!12754 _keys!709) from!863) lt!200165))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5359 0))(
  ( (ValueCellFull!5359 (v!7990 V!16311)) (EmptyCell!5359) )
))
(declare-datatypes ((array!26617 0))(
  ( (array!26618 (arr!12755 (Array (_ BitVec 32) ValueCell!5359)) (size!13107 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26617)

(declare-fun get!6360 (ValueCell!5359 V!16311) V!16311)

(declare-fun dynLambda!823 (Int (_ BitVec 64)) V!16311)

(assert (=> b!434852 (= lt!200165 (get!6360 (select (arr!12755 _values!549) from!863) (dynLambda!823 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!434853 () Bool)

(declare-fun e!256945 () Bool)

(declare-fun tp_is_empty!11405 () Bool)

(assert (=> b!434853 (= e!256945 tp_is_empty!11405)))

(declare-fun mapNonEmpty!18729 () Bool)

(declare-fun mapRes!18729 () Bool)

(declare-fun tp!36288 () Bool)

(declare-fun e!256950 () Bool)

(assert (=> mapNonEmpty!18729 (= mapRes!18729 (and tp!36288 e!256950))))

(declare-fun mapKey!18729 () (_ BitVec 32))

(declare-fun mapValue!18729 () ValueCell!5359)

(declare-fun mapRest!18729 () (Array (_ BitVec 32) ValueCell!5359))

(assert (=> mapNonEmpty!18729 (= (arr!12755 _values!549) (store mapRest!18729 mapKey!18729 mapValue!18729))))

(declare-fun b!434854 () Bool)

(declare-fun e!256953 () Bool)

(assert (=> b!434854 (= e!256952 e!256953)))

(declare-fun res!256221 () Bool)

(assert (=> b!434854 (=> (not res!256221) (not e!256953))))

(declare-fun lt!200166 () array!26615)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26615 (_ BitVec 32)) Bool)

(assert (=> b!434854 (= res!256221 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!200166 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!434854 (= lt!200166 (array!26616 (store (arr!12754 _keys!709) i!563 k!794) (size!13106 _keys!709)))))

(declare-fun res!256216 () Bool)

(assert (=> start!39994 (=> (not res!256216) (not e!256952))))

(assert (=> start!39994 (= res!256216 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13106 _keys!709))))))

(assert (=> start!39994 e!256952))

(assert (=> start!39994 tp_is_empty!11405))

(assert (=> start!39994 tp!36287))

(assert (=> start!39994 true))

(declare-fun e!256951 () Bool)

(declare-fun array_inv!9270 (array!26617) Bool)

(assert (=> start!39994 (and (array_inv!9270 _values!549) e!256951)))

(declare-fun array_inv!9271 (array!26615) Bool)

(assert (=> start!39994 (array_inv!9271 _keys!709)))

(declare-fun b!434855 () Bool)

(declare-fun res!256228 () Bool)

(assert (=> b!434855 (=> (not res!256228) (not e!256952))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!434855 (= res!256228 (validKeyInArray!0 k!794))))

(declare-fun b!434856 () Bool)

(declare-fun res!256219 () Bool)

(assert (=> b!434856 (=> (not res!256219) (not e!256952))))

(assert (=> b!434856 (= res!256219 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13106 _keys!709))))))

(declare-fun b!434857 () Bool)

(assert (=> b!434857 (= e!256949 true)))

(declare-fun lt!200167 () ListLongMap!6465)

(declare-fun lt!200161 () tuple2!7538)

(assert (=> b!434857 (= lt!200172 (+!1393 (+!1393 lt!200167 lt!200170) lt!200161))))

(declare-fun lt!200163 () Unit!12862)

(declare-fun v!412 () V!16311)

(declare-fun addCommutativeForDiffKeys!399 (ListLongMap!6465 (_ BitVec 64) V!16311 (_ BitVec 64) V!16311) Unit!12862)

(assert (=> b!434857 (= lt!200163 (addCommutativeForDiffKeys!399 lt!200167 k!794 v!412 (select (arr!12754 _keys!709) from!863) lt!200165))))

(declare-fun b!434858 () Bool)

(declare-fun res!256224 () Bool)

(assert (=> b!434858 (=> (not res!256224) (not e!256953))))

(declare-datatypes ((List!7586 0))(
  ( (Nil!7583) (Cons!7582 (h!8438 (_ BitVec 64)) (t!13296 List!7586)) )
))
(declare-fun arrayNoDuplicates!0 (array!26615 (_ BitVec 32) List!7586) Bool)

(assert (=> b!434858 (= res!256224 (arrayNoDuplicates!0 lt!200166 #b00000000000000000000000000000000 Nil!7583))))

(declare-fun b!434859 () Bool)

(assert (=> b!434859 (= e!256950 tp_is_empty!11405)))

(declare-fun mapIsEmpty!18729 () Bool)

(assert (=> mapIsEmpty!18729 mapRes!18729))

(declare-fun b!434860 () Bool)

(declare-fun e!256947 () Bool)

(assert (=> b!434860 (= e!256953 e!256947)))

(declare-fun res!256220 () Bool)

(assert (=> b!434860 (=> (not res!256220) (not e!256947))))

(assert (=> b!434860 (= res!256220 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16311)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!200169 () array!26617)

(declare-fun zeroValue!515 () V!16311)

(declare-fun getCurrentListMapNoExtraKeys!1432 (array!26615 array!26617 (_ BitVec 32) (_ BitVec 32) V!16311 V!16311 (_ BitVec 32) Int) ListLongMap!6465)

(assert (=> b!434860 (= lt!200162 (getCurrentListMapNoExtraKeys!1432 lt!200166 lt!200169 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!434860 (= lt!200169 (array!26618 (store (arr!12755 _values!549) i!563 (ValueCellFull!5359 v!412)) (size!13107 _values!549)))))

(declare-fun lt!200159 () ListLongMap!6465)

(assert (=> b!434860 (= lt!200159 (getCurrentListMapNoExtraKeys!1432 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!434861 () Bool)

(assert (=> b!434861 (= e!256947 (not e!256948))))

(declare-fun res!256217 () Bool)

(assert (=> b!434861 (=> res!256217 e!256948)))

(assert (=> b!434861 (= res!256217 (not (validKeyInArray!0 (select (arr!12754 _keys!709) from!863))))))

(declare-fun lt!200171 () ListLongMap!6465)

(assert (=> b!434861 (= lt!200171 lt!200164)))

(assert (=> b!434861 (= lt!200164 (+!1393 lt!200167 lt!200161))))

(assert (=> b!434861 (= lt!200171 (getCurrentListMapNoExtraKeys!1432 lt!200166 lt!200169 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!434861 (= lt!200161 (tuple2!7539 k!794 v!412))))

(assert (=> b!434861 (= lt!200167 (getCurrentListMapNoExtraKeys!1432 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!200158 () Unit!12862)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!574 (array!26615 array!26617 (_ BitVec 32) (_ BitVec 32) V!16311 V!16311 (_ BitVec 32) (_ BitVec 64) V!16311 (_ BitVec 32) Int) Unit!12862)

(assert (=> b!434861 (= lt!200158 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!574 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!434862 () Bool)

(declare-fun res!256227 () Bool)

(assert (=> b!434862 (=> (not res!256227) (not e!256952))))

(assert (=> b!434862 (= res!256227 (and (= (size!13107 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13106 _keys!709) (size!13107 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!434863 () Bool)

(declare-fun res!256218 () Bool)

(assert (=> b!434863 (=> (not res!256218) (not e!256952))))

(declare-fun arrayContainsKey!0 (array!26615 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!434863 (= res!256218 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!434864 () Bool)

(declare-fun res!256222 () Bool)

(assert (=> b!434864 (=> (not res!256222) (not e!256953))))

(assert (=> b!434864 (= res!256222 (bvsle from!863 i!563))))

(declare-fun b!434865 () Bool)

(declare-fun res!256229 () Bool)

(assert (=> b!434865 (=> (not res!256229) (not e!256952))))

(assert (=> b!434865 (= res!256229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!434866 () Bool)

(declare-fun res!256223 () Bool)

(assert (=> b!434866 (=> (not res!256223) (not e!256952))))

(assert (=> b!434866 (= res!256223 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7583))))

(declare-fun b!434867 () Bool)

(declare-fun res!256230 () Bool)

(assert (=> b!434867 (=> (not res!256230) (not e!256952))))

(assert (=> b!434867 (= res!256230 (or (= (select (arr!12754 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12754 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!434868 () Bool)

(assert (=> b!434868 (= e!256951 (and e!256945 mapRes!18729))))

(declare-fun condMapEmpty!18729 () Bool)

(declare-fun mapDefault!18729 () ValueCell!5359)

