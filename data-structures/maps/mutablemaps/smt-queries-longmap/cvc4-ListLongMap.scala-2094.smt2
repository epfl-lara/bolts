; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35744 () Bool)

(assert start!35744)

(declare-fun b!358750 () Bool)

(declare-fun res!199461 () Bool)

(declare-fun e!219684 () Bool)

(assert (=> b!358750 (=> (not res!199461) (not e!219684))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((array!19903 0))(
  ( (array!19904 (arr!9442 (Array (_ BitVec 32) (_ BitVec 64))) (size!9794 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19903)

(assert (=> b!358750 (= res!199461 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9794 _keys!1456))))))

(declare-fun b!358751 () Bool)

(declare-fun res!199465 () Bool)

(assert (=> b!358751 (=> (not res!199465) (not e!219684))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19903 (_ BitVec 32)) Bool)

(assert (=> b!358751 (= res!199465 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!358752 () Bool)

(declare-fun res!199466 () Bool)

(assert (=> b!358752 (=> (not res!199466) (not e!219684))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!19903 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!358752 (= res!199466 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!358753 () Bool)

(declare-fun res!199464 () Bool)

(assert (=> b!358753 (=> (not res!199464) (not e!219684))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!358753 (= res!199464 (validKeyInArray!0 k!1077))))

(declare-fun b!358754 () Bool)

(declare-fun res!199468 () Bool)

(assert (=> b!358754 (=> (not res!199468) (not e!219684))))

(assert (=> b!358754 (= res!199468 (= (select (arr!9442 _keys!1456) from!1805) k!1077))))

(declare-fun b!358755 () Bool)

(declare-fun res!199462 () Bool)

(assert (=> b!358755 (=> (not res!199462) (not e!219684))))

(declare-datatypes ((List!5472 0))(
  ( (Nil!5469) (Cons!5468 (h!6324 (_ BitVec 64)) (t!10630 List!5472)) )
))
(declare-fun arrayNoDuplicates!0 (array!19903 (_ BitVec 32) List!5472) Bool)

(assert (=> b!358755 (= res!199462 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5469))))

(declare-fun b!358756 () Bool)

(assert (=> b!358756 (= e!219684 (not (validKeyInArray!0 (select (arr!9442 _keys!1456) from!1805))))))

(declare-fun mapIsEmpty!13791 () Bool)

(declare-fun mapRes!13791 () Bool)

(assert (=> mapIsEmpty!13791 mapRes!13791))

(declare-fun b!358757 () Bool)

(declare-fun res!199463 () Bool)

(assert (=> b!358757 (=> (not res!199463) (not e!219684))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-datatypes ((V!11895 0))(
  ( (V!11896 (val!4139 Int)) )
))
(declare-datatypes ((ValueCell!3751 0))(
  ( (ValueCellFull!3751 (v!6329 V!11895)) (EmptyCell!3751) )
))
(declare-datatypes ((array!19905 0))(
  ( (array!19906 (arr!9443 (Array (_ BitVec 32) ValueCell!3751)) (size!9795 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19905)

(assert (=> b!358757 (= res!199463 (and (= (size!9795 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9794 _keys!1456) (size!9795 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!358758 () Bool)

(declare-fun e!219683 () Bool)

(declare-fun tp_is_empty!8189 () Bool)

(assert (=> b!358758 (= e!219683 tp_is_empty!8189)))

(declare-fun res!199467 () Bool)

(assert (=> start!35744 (=> (not res!199467) (not e!219684))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35744 (= res!199467 (validMask!0 mask!1842))))

(assert (=> start!35744 e!219684))

(assert (=> start!35744 true))

(declare-fun array_inv!6946 (array!19903) Bool)

(assert (=> start!35744 (array_inv!6946 _keys!1456)))

(declare-fun e!219686 () Bool)

(declare-fun array_inv!6947 (array!19905) Bool)

(assert (=> start!35744 (and (array_inv!6947 _values!1208) e!219686)))

(declare-fun mapNonEmpty!13791 () Bool)

(declare-fun tp!27849 () Bool)

(assert (=> mapNonEmpty!13791 (= mapRes!13791 (and tp!27849 e!219683))))

(declare-fun mapRest!13791 () (Array (_ BitVec 32) ValueCell!3751))

(declare-fun mapValue!13791 () ValueCell!3751)

(declare-fun mapKey!13791 () (_ BitVec 32))

(assert (=> mapNonEmpty!13791 (= (arr!9443 _values!1208) (store mapRest!13791 mapKey!13791 mapValue!13791))))

(declare-fun b!358759 () Bool)

(declare-fun e!219685 () Bool)

(assert (=> b!358759 (= e!219685 tp_is_empty!8189)))

(declare-fun b!358760 () Bool)

(assert (=> b!358760 (= e!219686 (and e!219685 mapRes!13791))))

(declare-fun condMapEmpty!13791 () Bool)

(declare-fun mapDefault!13791 () ValueCell!3751)

