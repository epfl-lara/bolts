; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40032 () Bool)

(assert start!40032)

(declare-fun b_free!10291 () Bool)

(declare-fun b_next!10291 () Bool)

(assert (=> start!40032 (= b_free!10291 (not b_next!10291))))

(declare-fun tp!36401 () Bool)

(declare-fun b_and!18259 () Bool)

(assert (=> start!40032 (= tp!36401 b_and!18259)))

(declare-fun b!436027 () Bool)

(declare-fun e!257518 () Bool)

(assert (=> b!436027 (= e!257518 true)))

(declare-datatypes ((V!16363 0))(
  ( (V!16364 (val!5766 Int)) )
))
(declare-datatypes ((tuple2!7570 0))(
  ( (tuple2!7571 (_1!3795 (_ BitVec 64)) (_2!3795 V!16363)) )
))
(declare-fun lt!201026 () tuple2!7570)

(declare-fun lt!201024 () tuple2!7570)

(declare-datatypes ((List!7614 0))(
  ( (Nil!7611) (Cons!7610 (h!8466 tuple2!7570) (t!13362 List!7614)) )
))
(declare-datatypes ((ListLongMap!6497 0))(
  ( (ListLongMap!6498 (toList!3264 List!7614)) )
))
(declare-fun lt!201016 () ListLongMap!6497)

(declare-fun lt!201019 () ListLongMap!6497)

(declare-fun +!1408 (ListLongMap!6497 tuple2!7570) ListLongMap!6497)

(assert (=> b!436027 (= lt!201016 (+!1408 (+!1408 lt!201019 lt!201024) lt!201026))))

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((Unit!12921 0))(
  ( (Unit!12922) )
))
(declare-fun lt!201017 () Unit!12921)

(declare-fun v!412 () V!16363)

(declare-fun lt!201022 () V!16363)

(declare-datatypes ((array!26689 0))(
  ( (array!26690 (arr!12791 (Array (_ BitVec 32) (_ BitVec 64))) (size!13143 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26689)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun addCommutativeForDiffKeys!411 (ListLongMap!6497 (_ BitVec 64) V!16363 (_ BitVec 64) V!16363) Unit!12921)

(assert (=> b!436027 (= lt!201017 (addCommutativeForDiffKeys!411 lt!201019 k!794 v!412 (select (arr!12791 _keys!709) from!863) lt!201022))))

(declare-fun mapNonEmpty!18786 () Bool)

(declare-fun mapRes!18786 () Bool)

(declare-fun tp!36402 () Bool)

(declare-fun e!257516 () Bool)

(assert (=> mapNonEmpty!18786 (= mapRes!18786 (and tp!36402 e!257516))))

(declare-datatypes ((ValueCell!5378 0))(
  ( (ValueCellFull!5378 (v!8009 V!16363)) (EmptyCell!5378) )
))
(declare-fun mapRest!18786 () (Array (_ BitVec 32) ValueCell!5378))

(declare-datatypes ((array!26691 0))(
  ( (array!26692 (arr!12792 (Array (_ BitVec 32) ValueCell!5378)) (size!13144 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26691)

(declare-fun mapKey!18786 () (_ BitVec 32))

(declare-fun mapValue!18786 () ValueCell!5378)

(assert (=> mapNonEmpty!18786 (= (arr!12792 _values!549) (store mapRest!18786 mapKey!18786 mapValue!18786))))

(declare-fun b!436028 () Bool)

(declare-fun e!257523 () Unit!12921)

(declare-fun Unit!12923 () Unit!12921)

(assert (=> b!436028 (= e!257523 Unit!12923)))

(declare-fun res!257080 () Bool)

(declare-fun e!257520 () Bool)

(assert (=> start!40032 (=> (not res!257080) (not e!257520))))

(assert (=> start!40032 (= res!257080 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13143 _keys!709))))))

(assert (=> start!40032 e!257520))

(declare-fun tp_is_empty!11443 () Bool)

(assert (=> start!40032 tp_is_empty!11443))

(assert (=> start!40032 tp!36401))

(assert (=> start!40032 true))

(declare-fun e!257524 () Bool)

(declare-fun array_inv!9288 (array!26691) Bool)

(assert (=> start!40032 (and (array_inv!9288 _values!549) e!257524)))

(declare-fun array_inv!9289 (array!26689) Bool)

(assert (=> start!40032 (array_inv!9289 _keys!709)))

(declare-fun b!436029 () Bool)

(declare-fun e!257515 () Bool)

(assert (=> b!436029 (= e!257520 e!257515)))

(declare-fun res!257078 () Bool)

(assert (=> b!436029 (=> (not res!257078) (not e!257515))))

(declare-fun lt!201020 () array!26689)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26689 (_ BitVec 32)) Bool)

(assert (=> b!436029 (= res!257078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201020 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!436029 (= lt!201020 (array!26690 (store (arr!12791 _keys!709) i!563 k!794) (size!13143 _keys!709)))))

(declare-fun b!436030 () Bool)

(declare-fun res!257079 () Bool)

(assert (=> b!436030 (=> (not res!257079) (not e!257520))))

(assert (=> b!436030 (= res!257079 (or (= (select (arr!12791 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12791 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!436031 () Bool)

(declare-fun res!257085 () Bool)

(assert (=> b!436031 (=> (not res!257085) (not e!257515))))

(assert (=> b!436031 (= res!257085 (bvsle from!863 i!563))))

(declare-fun b!436032 () Bool)

(declare-fun res!257071 () Bool)

(assert (=> b!436032 (=> (not res!257071) (not e!257520))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!436032 (= res!257071 (validMask!0 mask!1025))))

(declare-fun b!436033 () Bool)

(declare-fun e!257521 () Bool)

(assert (=> b!436033 (= e!257521 e!257518)))

(declare-fun res!257083 () Bool)

(assert (=> b!436033 (=> res!257083 e!257518)))

(assert (=> b!436033 (= res!257083 (= k!794 (select (arr!12791 _keys!709) from!863)))))

(assert (=> b!436033 (not (= (select (arr!12791 _keys!709) from!863) k!794))))

(declare-fun lt!201013 () Unit!12921)

(assert (=> b!436033 (= lt!201013 e!257523)))

(declare-fun c!55697 () Bool)

(assert (=> b!436033 (= c!55697 (= (select (arr!12791 _keys!709) from!863) k!794))))

(declare-fun lt!201023 () ListLongMap!6497)

(assert (=> b!436033 (= lt!201023 lt!201016)))

(declare-fun lt!201015 () ListLongMap!6497)

(assert (=> b!436033 (= lt!201016 (+!1408 lt!201015 lt!201024))))

(assert (=> b!436033 (= lt!201024 (tuple2!7571 (select (arr!12791 _keys!709) from!863) lt!201022))))

(declare-fun defaultEntry!557 () Int)

(declare-fun get!6386 (ValueCell!5378 V!16363) V!16363)

(declare-fun dynLambda!835 (Int (_ BitVec 64)) V!16363)

(assert (=> b!436033 (= lt!201022 (get!6386 (select (arr!12792 _values!549) from!863) (dynLambda!835 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!436034 () Bool)

(declare-fun e!257519 () Bool)

(assert (=> b!436034 (= e!257524 (and e!257519 mapRes!18786))))

(declare-fun condMapEmpty!18786 () Bool)

(declare-fun mapDefault!18786 () ValueCell!5378)

