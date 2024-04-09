; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39900 () Bool)

(assert start!39900)

(declare-fun b_free!10159 () Bool)

(declare-fun b_next!10159 () Bool)

(assert (=> start!39900 (= b_free!10159 (not b_next!10159))))

(declare-fun tp!36005 () Bool)

(declare-fun b_and!17995 () Bool)

(assert (=> start!39900 (= tp!36005 b_and!17995)))

(declare-fun b!431935 () Bool)

(declare-fun res!254114 () Bool)

(declare-fun e!255543 () Bool)

(assert (=> b!431935 (=> (not res!254114) (not e!255543))))

(declare-datatypes ((array!26435 0))(
  ( (array!26436 (arr!12664 (Array (_ BitVec 32) (_ BitVec 64))) (size!13016 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26435)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26435 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!431935 (= res!254114 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun res!254107 () Bool)

(assert (=> start!39900 (=> (not res!254107) (not e!255543))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39900 (= res!254107 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13016 _keys!709))))))

(assert (=> start!39900 e!255543))

(declare-fun tp_is_empty!11311 () Bool)

(assert (=> start!39900 tp_is_empty!11311))

(assert (=> start!39900 tp!36005))

(assert (=> start!39900 true))

(declare-datatypes ((V!16187 0))(
  ( (V!16188 (val!5700 Int)) )
))
(declare-datatypes ((ValueCell!5312 0))(
  ( (ValueCellFull!5312 (v!7943 V!16187)) (EmptyCell!5312) )
))
(declare-datatypes ((array!26437 0))(
  ( (array!26438 (arr!12665 (Array (_ BitVec 32) ValueCell!5312)) (size!13017 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26437)

(declare-fun e!255542 () Bool)

(declare-fun array_inv!9210 (array!26437) Bool)

(assert (=> start!39900 (and (array_inv!9210 _values!549) e!255542)))

(declare-fun array_inv!9211 (array!26435) Bool)

(assert (=> start!39900 (array_inv!9211 _keys!709)))

(declare-fun b!431936 () Bool)

(declare-fun e!255536 () Bool)

(declare-fun e!255535 () Bool)

(assert (=> b!431936 (= e!255536 e!255535)))

(declare-fun res!254109 () Bool)

(assert (=> b!431936 (=> res!254109 e!255535)))

(assert (=> b!431936 (= res!254109 (= k!794 (select (arr!12664 _keys!709) from!863)))))

(assert (=> b!431936 (not (= (select (arr!12664 _keys!709) from!863) k!794))))

(declare-datatypes ((Unit!12714 0))(
  ( (Unit!12715) )
))
(declare-fun lt!198055 () Unit!12714)

(declare-fun e!255540 () Unit!12714)

(assert (=> b!431936 (= lt!198055 e!255540)))

(declare-fun c!55499 () Bool)

(assert (=> b!431936 (= c!55499 (= (select (arr!12664 _keys!709) from!863) k!794))))

(declare-datatypes ((tuple2!7456 0))(
  ( (tuple2!7457 (_1!3738 (_ BitVec 64)) (_2!3738 V!16187)) )
))
(declare-datatypes ((List!7509 0))(
  ( (Nil!7506) (Cons!7505 (h!8361 tuple2!7456) (t!13125 List!7509)) )
))
(declare-datatypes ((ListLongMap!6383 0))(
  ( (ListLongMap!6384 (toList!3207 List!7509)) )
))
(declare-fun lt!198049 () ListLongMap!6383)

(declare-fun lt!198052 () ListLongMap!6383)

(assert (=> b!431936 (= lt!198049 lt!198052)))

(declare-fun lt!198045 () ListLongMap!6383)

(declare-fun lt!198054 () tuple2!7456)

(declare-fun +!1353 (ListLongMap!6383 tuple2!7456) ListLongMap!6383)

(assert (=> b!431936 (= lt!198052 (+!1353 lt!198045 lt!198054))))

(declare-fun lt!198050 () V!16187)

(assert (=> b!431936 (= lt!198054 (tuple2!7457 (select (arr!12664 _keys!709) from!863) lt!198050))))

(declare-fun defaultEntry!557 () Int)

(declare-fun get!6299 (ValueCell!5312 V!16187) V!16187)

(declare-fun dynLambda!792 (Int (_ BitVec 64)) V!16187)

(assert (=> b!431936 (= lt!198050 (get!6299 (select (arr!12665 _values!549) from!863) (dynLambda!792 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!431937 () Bool)

(declare-fun e!255538 () Bool)

(assert (=> b!431937 (= e!255538 tp_is_empty!11311)))

(declare-fun mapNonEmpty!18588 () Bool)

(declare-fun mapRes!18588 () Bool)

(declare-fun tp!36006 () Bool)

(assert (=> mapNonEmpty!18588 (= mapRes!18588 (and tp!36006 e!255538))))

(declare-fun mapValue!18588 () ValueCell!5312)

(declare-fun mapRest!18588 () (Array (_ BitVec 32) ValueCell!5312))

(declare-fun mapKey!18588 () (_ BitVec 32))

(assert (=> mapNonEmpty!18588 (= (arr!12665 _values!549) (store mapRest!18588 mapKey!18588 mapValue!18588))))

(declare-fun mapIsEmpty!18588 () Bool)

(assert (=> mapIsEmpty!18588 mapRes!18588))

(declare-fun b!431938 () Bool)

(declare-fun res!254115 () Bool)

(assert (=> b!431938 (=> (not res!254115) (not e!255543))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!431938 (= res!254115 (or (= (select (arr!12664 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12664 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!431939 () Bool)

(declare-fun e!255541 () Bool)

(assert (=> b!431939 (= e!255543 e!255541)))

(declare-fun res!254106 () Bool)

(assert (=> b!431939 (=> (not res!254106) (not e!255541))))

(declare-fun lt!198043 () array!26435)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26435 (_ BitVec 32)) Bool)

(assert (=> b!431939 (= res!254106 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!198043 mask!1025))))

(assert (=> b!431939 (= lt!198043 (array!26436 (store (arr!12664 _keys!709) i!563 k!794) (size!13016 _keys!709)))))

(declare-fun b!431940 () Bool)

(declare-fun res!254110 () Bool)

(assert (=> b!431940 (=> (not res!254110) (not e!255543))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!431940 (= res!254110 (validMask!0 mask!1025))))

(declare-fun b!431941 () Bool)

(declare-fun res!254102 () Bool)

(assert (=> b!431941 (=> (not res!254102) (not e!255543))))

(declare-datatypes ((List!7510 0))(
  ( (Nil!7507) (Cons!7506 (h!8362 (_ BitVec 64)) (t!13126 List!7510)) )
))
(declare-fun arrayNoDuplicates!0 (array!26435 (_ BitVec 32) List!7510) Bool)

(assert (=> b!431941 (= res!254102 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7507))))

(declare-fun b!431942 () Bool)

(declare-fun res!254104 () Bool)

(assert (=> b!431942 (=> (not res!254104) (not e!255543))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!431942 (= res!254104 (and (= (size!13017 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13016 _keys!709) (size!13017 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!431943 () Bool)

(declare-fun res!254108 () Bool)

(assert (=> b!431943 (=> (not res!254108) (not e!255541))))

(assert (=> b!431943 (= res!254108 (bvsle from!863 i!563))))

(declare-fun b!431944 () Bool)

(declare-fun res!254103 () Bool)

(assert (=> b!431944 (=> (not res!254103) (not e!255543))))

(assert (=> b!431944 (= res!254103 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!431945 () Bool)

(declare-fun res!254111 () Bool)

(assert (=> b!431945 (=> (not res!254111) (not e!255541))))

(assert (=> b!431945 (= res!254111 (arrayNoDuplicates!0 lt!198043 #b00000000000000000000000000000000 Nil!7507))))

(declare-fun b!431946 () Bool)

(declare-fun res!254112 () Bool)

(assert (=> b!431946 (=> (not res!254112) (not e!255543))))

(assert (=> b!431946 (= res!254112 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13016 _keys!709))))))

(declare-fun b!431947 () Bool)

(declare-fun Unit!12716 () Unit!12714)

(assert (=> b!431947 (= e!255540 Unit!12716)))

(declare-fun lt!198044 () Unit!12714)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26435 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12714)

(assert (=> b!431947 (= lt!198044 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!431947 false))

(declare-fun b!431948 () Bool)

(declare-fun res!254101 () Bool)

(assert (=> b!431948 (=> (not res!254101) (not e!255543))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!431948 (= res!254101 (validKeyInArray!0 k!794))))

(declare-fun b!431949 () Bool)

(declare-fun e!255539 () Bool)

(assert (=> b!431949 (= e!255539 tp_is_empty!11311)))

(declare-fun b!431950 () Bool)

(assert (=> b!431950 (= e!255542 (and e!255539 mapRes!18588))))

(declare-fun condMapEmpty!18588 () Bool)

(declare-fun mapDefault!18588 () ValueCell!5312)

