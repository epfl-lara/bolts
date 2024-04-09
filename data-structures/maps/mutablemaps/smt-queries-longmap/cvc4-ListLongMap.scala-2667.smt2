; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39832 () Bool)

(assert start!39832)

(declare-fun b_free!10091 () Bool)

(declare-fun b_next!10091 () Bool)

(assert (=> start!39832 (= b_free!10091 (not b_next!10091))))

(declare-fun tp!35802 () Bool)

(declare-fun b_and!17859 () Bool)

(assert (=> start!39832 (= tp!35802 b_and!17859)))

(declare-fun b!429828 () Bool)

(declare-fun e!254518 () Bool)

(declare-fun tp_is_empty!11243 () Bool)

(assert (=> b!429828 (= e!254518 tp_is_empty!11243)))

(declare-fun b!429829 () Bool)

(declare-datatypes ((Unit!12608 0))(
  ( (Unit!12609) )
))
(declare-fun e!254521 () Unit!12608)

(declare-fun Unit!12610 () Unit!12608)

(assert (=> b!429829 (= e!254521 Unit!12610)))

(declare-fun lt!196518 () Unit!12608)

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((array!26303 0))(
  ( (array!26304 (arr!12598 (Array (_ BitVec 32) (_ BitVec 64))) (size!12950 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26303)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26303 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12608)

(assert (=> b!429829 (= lt!196518 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!429829 false))

(declare-fun res!252584 () Bool)

(declare-fun e!254519 () Bool)

(assert (=> start!39832 (=> (not res!252584) (not e!254519))))

(assert (=> start!39832 (= res!252584 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12950 _keys!709))))))

(assert (=> start!39832 e!254519))

(assert (=> start!39832 tp_is_empty!11243))

(assert (=> start!39832 tp!35802))

(assert (=> start!39832 true))

(declare-datatypes ((V!16095 0))(
  ( (V!16096 (val!5666 Int)) )
))
(declare-datatypes ((ValueCell!5278 0))(
  ( (ValueCellFull!5278 (v!7909 V!16095)) (EmptyCell!5278) )
))
(declare-datatypes ((array!26305 0))(
  ( (array!26306 (arr!12599 (Array (_ BitVec 32) ValueCell!5278)) (size!12951 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26305)

(declare-fun e!254522 () Bool)

(declare-fun array_inv!9164 (array!26305) Bool)

(assert (=> start!39832 (and (array_inv!9164 _values!549) e!254522)))

(declare-fun array_inv!9165 (array!26303) Bool)

(assert (=> start!39832 (array_inv!9165 _keys!709)))

(declare-fun b!429830 () Bool)

(declare-fun res!252580 () Bool)

(assert (=> b!429830 (=> (not res!252580) (not e!254519))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!429830 (= res!252580 (or (= (select (arr!12598 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12598 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!18486 () Bool)

(declare-fun mapRes!18486 () Bool)

(declare-fun tp!35801 () Bool)

(assert (=> mapNonEmpty!18486 (= mapRes!18486 (and tp!35801 e!254518))))

(declare-fun mapKey!18486 () (_ BitVec 32))

(declare-fun mapRest!18486 () (Array (_ BitVec 32) ValueCell!5278))

(declare-fun mapValue!18486 () ValueCell!5278)

(assert (=> mapNonEmpty!18486 (= (arr!12599 _values!549) (store mapRest!18486 mapKey!18486 mapValue!18486))))

(declare-fun b!429831 () Bool)

(declare-fun res!252573 () Bool)

(assert (=> b!429831 (=> (not res!252573) (not e!254519))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26303 (_ BitVec 32)) Bool)

(assert (=> b!429831 (= res!252573 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!429832 () Bool)

(declare-fun res!252585 () Bool)

(declare-fun e!254524 () Bool)

(assert (=> b!429832 (=> (not res!252585) (not e!254524))))

(declare-fun lt!196521 () array!26303)

(declare-datatypes ((List!7450 0))(
  ( (Nil!7447) (Cons!7446 (h!8302 (_ BitVec 64)) (t!12998 List!7450)) )
))
(declare-fun arrayNoDuplicates!0 (array!26303 (_ BitVec 32) List!7450) Bool)

(assert (=> b!429832 (= res!252585 (arrayNoDuplicates!0 lt!196521 #b00000000000000000000000000000000 Nil!7447))))

(declare-fun b!429833 () Bool)

(declare-fun Unit!12611 () Unit!12608)

(assert (=> b!429833 (= e!254521 Unit!12611)))

(declare-fun b!429834 () Bool)

(declare-fun res!252578 () Bool)

(assert (=> b!429834 (=> (not res!252578) (not e!254519))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!429834 (= res!252578 (validMask!0 mask!1025))))

(declare-fun b!429835 () Bool)

(declare-fun res!252583 () Bool)

(assert (=> b!429835 (=> (not res!252583) (not e!254519))))

(assert (=> b!429835 (= res!252583 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12950 _keys!709))))))

(declare-fun b!429836 () Bool)

(declare-fun res!252579 () Bool)

(assert (=> b!429836 (=> (not res!252579) (not e!254519))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!429836 (= res!252579 (validKeyInArray!0 k!794))))

(declare-fun b!429837 () Bool)

(declare-fun e!254516 () Bool)

(assert (=> b!429837 (= e!254516 tp_is_empty!11243)))

(declare-fun b!429838 () Bool)

(assert (=> b!429838 (= e!254522 (and e!254516 mapRes!18486))))

(declare-fun condMapEmpty!18486 () Bool)

(declare-fun mapDefault!18486 () ValueCell!5278)

