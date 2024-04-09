; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39876 () Bool)

(assert start!39876)

(declare-fun b_free!10135 () Bool)

(declare-fun b_next!10135 () Bool)

(assert (=> start!39876 (= b_free!10135 (not b_next!10135))))

(declare-fun tp!35934 () Bool)

(declare-fun b_and!17947 () Bool)

(assert (=> start!39876 (= tp!35934 b_and!17947)))

(declare-fun b!431191 () Bool)

(declare-fun e!255183 () Bool)

(declare-fun e!255179 () Bool)

(assert (=> b!431191 (= e!255183 (not e!255179))))

(declare-fun res!253566 () Bool)

(assert (=> b!431191 (=> res!253566 e!255179)))

(declare-datatypes ((array!26387 0))(
  ( (array!26388 (arr!12640 (Array (_ BitVec 32) (_ BitVec 64))) (size!12992 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26387)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!431191 (= res!253566 (not (validKeyInArray!0 (select (arr!12640 _keys!709) from!863))))))

(declare-datatypes ((V!16155 0))(
  ( (V!16156 (val!5688 Int)) )
))
(declare-datatypes ((tuple2!7434 0))(
  ( (tuple2!7435 (_1!3727 (_ BitVec 64)) (_2!3727 V!16155)) )
))
(declare-datatypes ((List!7486 0))(
  ( (Nil!7483) (Cons!7482 (h!8338 tuple2!7434) (t!13078 List!7486)) )
))
(declare-datatypes ((ListLongMap!6361 0))(
  ( (ListLongMap!6362 (toList!3196 List!7486)) )
))
(declare-fun lt!197504 () ListLongMap!6361)

(declare-fun lt!197514 () ListLongMap!6361)

(assert (=> b!431191 (= lt!197504 lt!197514)))

(declare-fun lt!197508 () ListLongMap!6361)

(declare-fun lt!197517 () tuple2!7434)

(declare-fun +!1344 (ListLongMap!6361 tuple2!7434) ListLongMap!6361)

(assert (=> b!431191 (= lt!197514 (+!1344 lt!197508 lt!197517))))

(declare-fun minValue!515 () V!16155)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16155)

(declare-fun lt!197509 () array!26387)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5300 0))(
  ( (ValueCellFull!5300 (v!7931 V!16155)) (EmptyCell!5300) )
))
(declare-datatypes ((array!26389 0))(
  ( (array!26390 (arr!12641 (Array (_ BitVec 32) ValueCell!5300)) (size!12993 (_ BitVec 32))) )
))
(declare-fun lt!197516 () array!26389)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1390 (array!26387 array!26389 (_ BitVec 32) (_ BitVec 32) V!16155 V!16155 (_ BitVec 32) Int) ListLongMap!6361)

(assert (=> b!431191 (= lt!197504 (getCurrentListMapNoExtraKeys!1390 lt!197509 lt!197516 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!16155)

(assert (=> b!431191 (= lt!197517 (tuple2!7435 k!794 v!412))))

(declare-fun _values!549 () array!26389)

(assert (=> b!431191 (= lt!197508 (getCurrentListMapNoExtraKeys!1390 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12676 0))(
  ( (Unit!12677) )
))
(declare-fun lt!197515 () Unit!12676)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!537 (array!26387 array!26389 (_ BitVec 32) (_ BitVec 32) V!16155 V!16155 (_ BitVec 32) (_ BitVec 64) V!16155 (_ BitVec 32) Int) Unit!12676)

(assert (=> b!431191 (= lt!197515 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!537 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!431192 () Bool)

(declare-fun e!255182 () Unit!12676)

(declare-fun Unit!12678 () Unit!12676)

(assert (=> b!431192 (= e!255182 Unit!12678)))

(declare-fun lt!197513 () Unit!12676)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26387 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12676)

(assert (=> b!431192 (= lt!197513 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!431192 false))

(declare-fun mapIsEmpty!18552 () Bool)

(declare-fun mapRes!18552 () Bool)

(assert (=> mapIsEmpty!18552 mapRes!18552))

(declare-fun b!431193 () Bool)

(declare-fun res!253567 () Bool)

(declare-fun e!255184 () Bool)

(assert (=> b!431193 (=> (not res!253567) (not e!255184))))

(declare-datatypes ((List!7487 0))(
  ( (Nil!7484) (Cons!7483 (h!8339 (_ BitVec 64)) (t!13079 List!7487)) )
))
(declare-fun arrayNoDuplicates!0 (array!26387 (_ BitVec 32) List!7487) Bool)

(assert (=> b!431193 (= res!253567 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7484))))

(declare-fun res!253562 () Bool)

(assert (=> start!39876 (=> (not res!253562) (not e!255184))))

(assert (=> start!39876 (= res!253562 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12992 _keys!709))))))

(assert (=> start!39876 e!255184))

(declare-fun tp_is_empty!11287 () Bool)

(assert (=> start!39876 tp_is_empty!11287))

(assert (=> start!39876 tp!35934))

(assert (=> start!39876 true))

(declare-fun e!255178 () Bool)

(declare-fun array_inv!9190 (array!26389) Bool)

(assert (=> start!39876 (and (array_inv!9190 _values!549) e!255178)))

(declare-fun array_inv!9191 (array!26387) Bool)

(assert (=> start!39876 (array_inv!9191 _keys!709)))

(declare-fun b!431194 () Bool)

(declare-fun res!253561 () Bool)

(assert (=> b!431194 (=> (not res!253561) (not e!255184))))

(assert (=> b!431194 (= res!253561 (or (= (select (arr!12640 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12640 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!431195 () Bool)

(declare-fun e!255180 () Bool)

(assert (=> b!431195 (= e!255180 tp_is_empty!11287)))

(declare-fun b!431196 () Bool)

(declare-fun res!253572 () Bool)

(assert (=> b!431196 (=> (not res!253572) (not e!255184))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!431196 (= res!253572 (validMask!0 mask!1025))))

(declare-fun b!431197 () Bool)

(declare-fun res!253573 () Bool)

(assert (=> b!431197 (=> (not res!253573) (not e!255184))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26387 (_ BitVec 32)) Bool)

(assert (=> b!431197 (= res!253573 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!431198 () Bool)

(assert (=> b!431198 (= e!255178 (and e!255180 mapRes!18552))))

(declare-fun condMapEmpty!18552 () Bool)

(declare-fun mapDefault!18552 () ValueCell!5300)

