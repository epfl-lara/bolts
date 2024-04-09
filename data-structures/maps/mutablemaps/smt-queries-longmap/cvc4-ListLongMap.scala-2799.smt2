; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40694 () Bool)

(assert start!40694)

(declare-fun b_free!10697 () Bool)

(declare-fun b_next!10697 () Bool)

(assert (=> start!40694 (= b_free!10697 (not b_next!10697))))

(declare-fun tp!37911 () Bool)

(declare-fun b_and!18723 () Bool)

(assert (=> start!40694 (= tp!37911 b_and!18723)))

(declare-fun mapIsEmpty!19686 () Bool)

(declare-fun mapRes!19686 () Bool)

(assert (=> mapIsEmpty!19686 mapRes!19686))

(declare-fun b!449657 () Bool)

(declare-fun res!267621 () Bool)

(declare-fun e!263589 () Bool)

(assert (=> b!449657 (=> (not res!267621) (not e!263589))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!27837 0))(
  ( (array!27838 (arr!13361 (Array (_ BitVec 32) (_ BitVec 64))) (size!13713 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27837)

(assert (=> b!449657 (= res!267621 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13713 _keys!709))))))

(declare-fun b!449658 () Bool)

(declare-fun res!267625 () Bool)

(assert (=> b!449658 (=> (not res!267625) (not e!263589))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27837 (_ BitVec 32)) Bool)

(assert (=> b!449658 (= res!267625 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!449659 () Bool)

(declare-fun res!267622 () Bool)

(declare-fun e!263584 () Bool)

(assert (=> b!449659 (=> (not res!267622) (not e!263584))))

(declare-fun lt!204410 () array!27837)

(declare-datatypes ((List!8010 0))(
  ( (Nil!8007) (Cons!8006 (h!8862 (_ BitVec 64)) (t!13780 List!8010)) )
))
(declare-fun arrayNoDuplicates!0 (array!27837 (_ BitVec 32) List!8010) Bool)

(assert (=> b!449659 (= res!267622 (arrayNoDuplicates!0 lt!204410 #b00000000000000000000000000000000 Nil!8007))))

(declare-fun mapNonEmpty!19686 () Bool)

(declare-fun tp!37910 () Bool)

(declare-fun e!263585 () Bool)

(assert (=> mapNonEmpty!19686 (= mapRes!19686 (and tp!37910 e!263585))))

(declare-datatypes ((V!17151 0))(
  ( (V!17152 (val!6062 Int)) )
))
(declare-datatypes ((ValueCell!5674 0))(
  ( (ValueCellFull!5674 (v!8313 V!17151)) (EmptyCell!5674) )
))
(declare-fun mapRest!19686 () (Array (_ BitVec 32) ValueCell!5674))

(declare-fun mapKey!19686 () (_ BitVec 32))

(declare-datatypes ((array!27839 0))(
  ( (array!27840 (arr!13362 (Array (_ BitVec 32) ValueCell!5674)) (size!13714 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27839)

(declare-fun mapValue!19686 () ValueCell!5674)

(assert (=> mapNonEmpty!19686 (= (arr!13362 _values!549) (store mapRest!19686 mapKey!19686 mapValue!19686))))

(declare-fun res!267626 () Bool)

(assert (=> start!40694 (=> (not res!267626) (not e!263589))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40694 (= res!267626 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13713 _keys!709))))))

(assert (=> start!40694 e!263589))

(declare-fun tp_is_empty!12035 () Bool)

(assert (=> start!40694 tp_is_empty!12035))

(assert (=> start!40694 tp!37911))

(assert (=> start!40694 true))

(declare-fun e!263587 () Bool)

(declare-fun array_inv!9670 (array!27839) Bool)

(assert (=> start!40694 (and (array_inv!9670 _values!549) e!263587)))

(declare-fun array_inv!9671 (array!27837) Bool)

(assert (=> start!40694 (array_inv!9671 _keys!709)))

(declare-fun b!449660 () Bool)

(assert (=> b!449660 (= e!263585 tp_is_empty!12035)))

(declare-fun b!449661 () Bool)

(declare-fun res!267627 () Bool)

(assert (=> b!449661 (=> (not res!267627) (not e!263589))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!449661 (= res!267627 (and (= (size!13714 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13713 _keys!709) (size!13714 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!449662 () Bool)

(assert (=> b!449662 (= e!263589 e!263584)))

(declare-fun res!267624 () Bool)

(assert (=> b!449662 (=> (not res!267624) (not e!263584))))

(assert (=> b!449662 (= res!267624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204410 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!449662 (= lt!204410 (array!27838 (store (arr!13361 _keys!709) i!563 k!794) (size!13713 _keys!709)))))

(declare-fun b!449663 () Bool)

(declare-fun res!267628 () Bool)

(assert (=> b!449663 (=> (not res!267628) (not e!263589))))

(assert (=> b!449663 (= res!267628 (or (= (select (arr!13361 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13361 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!449664 () Bool)

(declare-fun res!267619 () Bool)

(assert (=> b!449664 (=> (not res!267619) (not e!263589))))

(declare-fun arrayContainsKey!0 (array!27837 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!449664 (= res!267619 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!449665 () Bool)

(declare-fun res!267629 () Bool)

(assert (=> b!449665 (=> (not res!267629) (not e!263589))))

(assert (=> b!449665 (= res!267629 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8007))))

(declare-fun b!449666 () Bool)

(declare-fun res!267620 () Bool)

(assert (=> b!449666 (=> (not res!267620) (not e!263589))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!449666 (= res!267620 (validMask!0 mask!1025))))

(declare-fun b!449667 () Bool)

(declare-fun res!267623 () Bool)

(assert (=> b!449667 (=> (not res!267623) (not e!263589))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!449667 (= res!267623 (validKeyInArray!0 k!794))))

(declare-fun b!449668 () Bool)

(declare-fun e!263588 () Bool)

(assert (=> b!449668 (= e!263587 (and e!263588 mapRes!19686))))

(declare-fun condMapEmpty!19686 () Bool)

(declare-fun mapDefault!19686 () ValueCell!5674)

