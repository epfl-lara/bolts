; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40376 () Bool)

(assert start!40376)

(declare-fun b!443327 () Bool)

(declare-fun res!262792 () Bool)

(declare-fun e!260843 () Bool)

(assert (=> b!443327 (=> (not res!262792) (not e!260843))))

(declare-datatypes ((array!27285 0))(
  ( (array!27286 (arr!13087 (Array (_ BitVec 32) (_ BitVec 64))) (size!13439 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27285)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27285 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!443327 (= res!262792 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!443328 () Bool)

(declare-fun e!260847 () Bool)

(assert (=> b!443328 (= e!260847 false)))

(declare-fun lt!203312 () Bool)

(declare-fun lt!203313 () array!27285)

(declare-datatypes ((List!7822 0))(
  ( (Nil!7819) (Cons!7818 (h!8674 (_ BitVec 64)) (t!13588 List!7822)) )
))
(declare-fun arrayNoDuplicates!0 (array!27285 (_ BitVec 32) List!7822) Bool)

(assert (=> b!443328 (= lt!203312 (arrayNoDuplicates!0 lt!203313 #b00000000000000000000000000000000 Nil!7819))))

(declare-fun b!443329 () Bool)

(assert (=> b!443329 (= e!260843 e!260847)))

(declare-fun res!262791 () Bool)

(assert (=> b!443329 (=> (not res!262791) (not e!260847))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27285 (_ BitVec 32)) Bool)

(assert (=> b!443329 (= res!262791 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203313 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!443329 (= lt!203313 (array!27286 (store (arr!13087 _keys!709) i!563 k!794) (size!13439 _keys!709)))))

(declare-fun b!443330 () Bool)

(declare-fun res!262788 () Bool)

(assert (=> b!443330 (=> (not res!262788) (not e!260843))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16775 0))(
  ( (V!16776 (val!5921 Int)) )
))
(declare-datatypes ((ValueCell!5533 0))(
  ( (ValueCellFull!5533 (v!8168 V!16775)) (EmptyCell!5533) )
))
(declare-datatypes ((array!27287 0))(
  ( (array!27288 (arr!13088 (Array (_ BitVec 32) ValueCell!5533)) (size!13440 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27287)

(assert (=> b!443330 (= res!262788 (and (= (size!13440 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13439 _keys!709) (size!13440 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!443331 () Bool)

(declare-fun e!260846 () Bool)

(declare-fun tp_is_empty!11753 () Bool)

(assert (=> b!443331 (= e!260846 tp_is_empty!11753)))

(declare-fun res!262786 () Bool)

(assert (=> start!40376 (=> (not res!262786) (not e!260843))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40376 (= res!262786 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13439 _keys!709))))))

(assert (=> start!40376 e!260843))

(assert (=> start!40376 true))

(declare-fun e!260842 () Bool)

(declare-fun array_inv!9488 (array!27287) Bool)

(assert (=> start!40376 (and (array_inv!9488 _values!549) e!260842)))

(declare-fun array_inv!9489 (array!27285) Bool)

(assert (=> start!40376 (array_inv!9489 _keys!709)))

(declare-fun b!443332 () Bool)

(declare-fun res!262790 () Bool)

(assert (=> b!443332 (=> (not res!262790) (not e!260843))))

(assert (=> b!443332 (= res!262790 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7819))))

(declare-fun b!443333 () Bool)

(declare-fun e!260845 () Bool)

(assert (=> b!443333 (= e!260845 tp_is_empty!11753)))

(declare-fun b!443334 () Bool)

(declare-fun res!262794 () Bool)

(assert (=> b!443334 (=> (not res!262794) (not e!260843))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!443334 (= res!262794 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!19257 () Bool)

(declare-fun mapRes!19257 () Bool)

(assert (=> mapIsEmpty!19257 mapRes!19257))

(declare-fun b!443335 () Bool)

(declare-fun res!262789 () Bool)

(assert (=> b!443335 (=> (not res!262789) (not e!260843))))

(assert (=> b!443335 (= res!262789 (or (= (select (arr!13087 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13087 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19257 () Bool)

(declare-fun tp!37239 () Bool)

(assert (=> mapNonEmpty!19257 (= mapRes!19257 (and tp!37239 e!260846))))

(declare-fun mapKey!19257 () (_ BitVec 32))

(declare-fun mapValue!19257 () ValueCell!5533)

(declare-fun mapRest!19257 () (Array (_ BitVec 32) ValueCell!5533))

(assert (=> mapNonEmpty!19257 (= (arr!13088 _values!549) (store mapRest!19257 mapKey!19257 mapValue!19257))))

(declare-fun b!443336 () Bool)

(declare-fun res!262793 () Bool)

(assert (=> b!443336 (=> (not res!262793) (not e!260843))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!443336 (= res!262793 (validKeyInArray!0 k!794))))

(declare-fun b!443337 () Bool)

(declare-fun res!262795 () Bool)

(assert (=> b!443337 (=> (not res!262795) (not e!260843))))

(assert (=> b!443337 (= res!262795 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13439 _keys!709))))))

(declare-fun b!443338 () Bool)

(assert (=> b!443338 (= e!260842 (and e!260845 mapRes!19257))))

(declare-fun condMapEmpty!19257 () Bool)

(declare-fun mapDefault!19257 () ValueCell!5533)

