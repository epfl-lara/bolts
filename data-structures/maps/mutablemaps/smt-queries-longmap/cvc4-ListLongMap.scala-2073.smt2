; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35618 () Bool)

(assert start!35618)

(declare-fun mapIsEmpty!13602 () Bool)

(declare-fun mapRes!13602 () Bool)

(assert (=> mapIsEmpty!13602 mapRes!13602))

(declare-fun b!357049 () Bool)

(declare-fun res!198332 () Bool)

(declare-fun e!218658 () Bool)

(assert (=> b!357049 (=> (not res!198332) (not e!218658))))

(declare-datatypes ((array!19661 0))(
  ( (array!19662 (arr!9321 (Array (_ BitVec 32) (_ BitVec 64))) (size!9673 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19661)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19661 (_ BitVec 32)) Bool)

(assert (=> b!357049 (= res!198332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!357050 () Bool)

(declare-fun res!198328 () Bool)

(assert (=> b!357050 (=> (not res!198328) (not e!218658))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!357050 (= res!198328 (validKeyInArray!0 k!1077))))

(declare-fun b!357051 () Bool)

(declare-fun res!198331 () Bool)

(assert (=> b!357051 (=> (not res!198331) (not e!218658))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!19661 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!357051 (= res!198331 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!357052 () Bool)

(declare-fun res!198333 () Bool)

(assert (=> b!357052 (=> (not res!198333) (not e!218658))))

(declare-datatypes ((List!5408 0))(
  ( (Nil!5405) (Cons!5404 (h!6260 (_ BitVec 64)) (t!10566 List!5408)) )
))
(declare-fun arrayNoDuplicates!0 (array!19661 (_ BitVec 32) List!5408) Bool)

(assert (=> b!357052 (= res!198333 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5405))))

(declare-fun mapNonEmpty!13602 () Bool)

(declare-fun tp!27579 () Bool)

(declare-fun e!218659 () Bool)

(assert (=> mapNonEmpty!13602 (= mapRes!13602 (and tp!27579 e!218659))))

(declare-fun mapKey!13602 () (_ BitVec 32))

(declare-datatypes ((V!11727 0))(
  ( (V!11728 (val!4076 Int)) )
))
(declare-datatypes ((ValueCell!3688 0))(
  ( (ValueCellFull!3688 (v!6266 V!11727)) (EmptyCell!3688) )
))
(declare-datatypes ((array!19663 0))(
  ( (array!19664 (arr!9322 (Array (_ BitVec 32) ValueCell!3688)) (size!9674 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19663)

(declare-fun mapRest!13602 () (Array (_ BitVec 32) ValueCell!3688))

(declare-fun mapValue!13602 () ValueCell!3688)

(assert (=> mapNonEmpty!13602 (= (arr!9322 _values!1208) (store mapRest!13602 mapKey!13602 mapValue!13602))))

(declare-fun b!357054 () Bool)

(declare-fun e!218660 () Bool)

(declare-fun e!218656 () Bool)

(assert (=> b!357054 (= e!218660 (and e!218656 mapRes!13602))))

(declare-fun condMapEmpty!13602 () Bool)

(declare-fun mapDefault!13602 () ValueCell!3688)

