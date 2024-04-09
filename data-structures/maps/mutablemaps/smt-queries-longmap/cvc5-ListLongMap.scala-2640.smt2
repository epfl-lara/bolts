; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39666 () Bool)

(assert start!39666)

(declare-fun b_free!9925 () Bool)

(declare-fun b_next!9925 () Bool)

(assert (=> start!39666 (= b_free!9925 (not b_next!9925))))

(declare-fun tp!35304 () Bool)

(declare-fun b_and!17599 () Bool)

(assert (=> start!39666 (= tp!35304 b_and!17599)))

(declare-fun b!425420 () Bool)

(declare-fun res!249184 () Bool)

(declare-fun e!252538 () Bool)

(assert (=> b!425420 (=> (not res!249184) (not e!252538))))

(declare-datatypes ((array!25981 0))(
  ( (array!25982 (arr!12437 (Array (_ BitVec 32) (_ BitVec 64))) (size!12789 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25981)

(declare-datatypes ((List!7317 0))(
  ( (Nil!7314) (Cons!7313 (h!8169 (_ BitVec 64)) (t!12769 List!7317)) )
))
(declare-fun arrayNoDuplicates!0 (array!25981 (_ BitVec 32) List!7317) Bool)

(assert (=> b!425420 (= res!249184 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7314))))

(declare-fun b!425421 () Bool)

(declare-fun res!249183 () Bool)

(assert (=> b!425421 (=> (not res!249183) (not e!252538))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!425421 (= res!249183 (validKeyInArray!0 k!794))))

(declare-fun b!425422 () Bool)

(declare-fun e!252533 () Bool)

(declare-fun tp_is_empty!11077 () Bool)

(assert (=> b!425422 (= e!252533 tp_is_empty!11077)))

(declare-fun b!425423 () Bool)

(declare-fun e!252536 () Bool)

(assert (=> b!425423 (= e!252536 (not true))))

(declare-datatypes ((V!15875 0))(
  ( (V!15876 (val!5583 Int)) )
))
(declare-fun minValue!515 () V!15875)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15875)

(declare-fun lt!194669 () array!25981)

(declare-fun v!412 () V!15875)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5195 0))(
  ( (ValueCellFull!5195 (v!7826 V!15875)) (EmptyCell!5195) )
))
(declare-datatypes ((array!25983 0))(
  ( (array!25984 (arr!12438 (Array (_ BitVec 32) ValueCell!5195)) (size!12790 (_ BitVec 32))) )
))
(declare-fun lt!194670 () array!25983)

(declare-fun _values!549 () array!25983)

(declare-datatypes ((tuple2!7272 0))(
  ( (tuple2!7273 (_1!3646 (_ BitVec 64)) (_2!3646 V!15875)) )
))
(declare-datatypes ((List!7318 0))(
  ( (Nil!7315) (Cons!7314 (h!8170 tuple2!7272) (t!12770 List!7318)) )
))
(declare-datatypes ((ListLongMap!6199 0))(
  ( (ListLongMap!6200 (toList!3115 List!7318)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1316 (array!25981 array!25983 (_ BitVec 32) (_ BitVec 32) V!15875 V!15875 (_ BitVec 32) Int) ListLongMap!6199)

(declare-fun +!1273 (ListLongMap!6199 tuple2!7272) ListLongMap!6199)

(assert (=> b!425423 (= (getCurrentListMapNoExtraKeys!1316 lt!194669 lt!194670 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1273 (getCurrentListMapNoExtraKeys!1316 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7273 k!794 v!412)))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!12449 0))(
  ( (Unit!12450) )
))
(declare-fun lt!194668 () Unit!12449)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!475 (array!25981 array!25983 (_ BitVec 32) (_ BitVec 32) V!15875 V!15875 (_ BitVec 32) (_ BitVec 64) V!15875 (_ BitVec 32) Int) Unit!12449)

(assert (=> b!425423 (= lt!194668 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!475 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!425424 () Bool)

(declare-fun e!252537 () Bool)

(assert (=> b!425424 (= e!252537 tp_is_empty!11077)))

(declare-fun b!425425 () Bool)

(declare-fun e!252532 () Bool)

(assert (=> b!425425 (= e!252538 e!252532)))

(declare-fun res!249192 () Bool)

(assert (=> b!425425 (=> (not res!249192) (not e!252532))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25981 (_ BitVec 32)) Bool)

(assert (=> b!425425 (= res!249192 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194669 mask!1025))))

(assert (=> b!425425 (= lt!194669 (array!25982 (store (arr!12437 _keys!709) i!563 k!794) (size!12789 _keys!709)))))

(declare-fun b!425426 () Bool)

(declare-fun res!249193 () Bool)

(assert (=> b!425426 (=> (not res!249193) (not e!252532))))

(assert (=> b!425426 (= res!249193 (bvsle from!863 i!563))))

(declare-fun b!425427 () Bool)

(declare-fun res!249188 () Bool)

(assert (=> b!425427 (=> (not res!249188) (not e!252538))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!425427 (= res!249188 (validMask!0 mask!1025))))

(declare-fun b!425428 () Bool)

(declare-fun res!249187 () Bool)

(assert (=> b!425428 (=> (not res!249187) (not e!252538))))

(assert (=> b!425428 (= res!249187 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12789 _keys!709))))))

(declare-fun b!425429 () Bool)

(declare-fun res!249185 () Bool)

(assert (=> b!425429 (=> (not res!249185) (not e!252538))))

(assert (=> b!425429 (= res!249185 (or (= (select (arr!12437 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12437 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!425430 () Bool)

(declare-fun e!252535 () Bool)

(declare-fun mapRes!18237 () Bool)

(assert (=> b!425430 (= e!252535 (and e!252533 mapRes!18237))))

(declare-fun condMapEmpty!18237 () Bool)

(declare-fun mapDefault!18237 () ValueCell!5195)

