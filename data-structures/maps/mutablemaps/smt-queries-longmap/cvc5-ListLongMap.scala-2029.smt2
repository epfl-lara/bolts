; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35326 () Bool)

(assert start!35326)

(declare-fun mapNonEmpty!13194 () Bool)

(declare-fun mapRes!13194 () Bool)

(declare-fun tp!27090 () Bool)

(declare-fun e!216584 () Bool)

(assert (=> mapNonEmpty!13194 (= mapRes!13194 (and tp!27090 e!216584))))

(declare-datatypes ((V!11371 0))(
  ( (V!11372 (val!3942 Int)) )
))
(declare-datatypes ((ValueCell!3554 0))(
  ( (ValueCellFull!3554 (v!6131 V!11371)) (EmptyCell!3554) )
))
(declare-fun mapValue!13194 () ValueCell!3554)

(declare-fun mapRest!13194 () (Array (_ BitVec 32) ValueCell!3554))

(declare-datatypes ((array!19145 0))(
  ( (array!19146 (arr!9065 (Array (_ BitVec 32) ValueCell!3554)) (size!9417 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19145)

(declare-fun mapKey!13194 () (_ BitVec 32))

(assert (=> mapNonEmpty!13194 (= (arr!9065 _values!1208) (store mapRest!13194 mapKey!13194 mapValue!13194))))

(declare-fun mapIsEmpty!13194 () Bool)

(assert (=> mapIsEmpty!13194 mapRes!13194))

(declare-fun b!353553 () Bool)

(declare-fun e!216583 () Bool)

(declare-fun e!216587 () Bool)

(assert (=> b!353553 (= e!216583 e!216587)))

(declare-fun res!196071 () Bool)

(assert (=> b!353553 (=> res!196071 e!216587)))

(declare-datatypes ((List!5295 0))(
  ( (Nil!5292) (Cons!5291 (h!6147 (_ BitVec 64)) (t!10453 List!5295)) )
))
(declare-fun contains!2380 (List!5295 (_ BitVec 64)) Bool)

(assert (=> b!353553 (= res!196071 (contains!2380 Nil!5292 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!196076 () Bool)

(assert (=> start!35326 (=> (not res!196076) (not e!216583))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35326 (= res!196076 (validMask!0 mask!1842))))

(assert (=> start!35326 e!216583))

(assert (=> start!35326 true))

(declare-fun e!216586 () Bool)

(declare-fun array_inv!6672 (array!19145) Bool)

(assert (=> start!35326 (and (array_inv!6672 _values!1208) e!216586)))

(declare-datatypes ((array!19147 0))(
  ( (array!19148 (arr!9066 (Array (_ BitVec 32) (_ BitVec 64))) (size!9418 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19147)

(declare-fun array_inv!6673 (array!19147) Bool)

(assert (=> start!35326 (array_inv!6673 _keys!1456)))

(declare-fun b!353554 () Bool)

(declare-fun e!216585 () Bool)

(assert (=> b!353554 (= e!216586 (and e!216585 mapRes!13194))))

(declare-fun condMapEmpty!13194 () Bool)

(declare-fun mapDefault!13194 () ValueCell!3554)

