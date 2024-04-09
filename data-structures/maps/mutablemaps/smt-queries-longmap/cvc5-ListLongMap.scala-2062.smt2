; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35548 () Bool)

(assert start!35548)

(declare-fun mapNonEmpty!13497 () Bool)

(declare-fun mapRes!13497 () Bool)

(declare-fun tp!27474 () Bool)

(declare-fun e!218132 () Bool)

(assert (=> mapNonEmpty!13497 (= mapRes!13497 (and tp!27474 e!218132))))

(declare-fun mapKey!13497 () (_ BitVec 32))

(declare-datatypes ((V!11635 0))(
  ( (V!11636 (val!4041 Int)) )
))
(declare-datatypes ((ValueCell!3653 0))(
  ( (ValueCellFull!3653 (v!6231 V!11635)) (EmptyCell!3653) )
))
(declare-fun mapValue!13497 () ValueCell!3653)

(declare-datatypes ((array!19529 0))(
  ( (array!19530 (arr!9255 (Array (_ BitVec 32) ValueCell!3653)) (size!9607 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19529)

(declare-fun mapRest!13497 () (Array (_ BitVec 32) ValueCell!3653))

(assert (=> mapNonEmpty!13497 (= (arr!9255 _values!1208) (store mapRest!13497 mapKey!13497 mapValue!13497))))

(declare-fun b!355929 () Bool)

(declare-fun e!218135 () Bool)

(assert (=> b!355929 (= e!218135 false)))

(declare-fun lt!165865 () Bool)

(declare-datatypes ((array!19531 0))(
  ( (array!19532 (arr!9256 (Array (_ BitVec 32) (_ BitVec 64))) (size!9608 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19531)

(declare-datatypes ((List!5382 0))(
  ( (Nil!5379) (Cons!5378 (h!6234 (_ BitVec 64)) (t!10540 List!5382)) )
))
(declare-fun arrayNoDuplicates!0 (array!19531 (_ BitVec 32) List!5382) Bool)

(assert (=> b!355929 (= lt!165865 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5379))))

(declare-fun b!355930 () Bool)

(declare-fun res!197524 () Bool)

(assert (=> b!355930 (=> (not res!197524) (not e!218135))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19531 (_ BitVec 32)) Bool)

(assert (=> b!355930 (= res!197524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!355931 () Bool)

(declare-fun res!197523 () Bool)

(assert (=> b!355931 (=> (not res!197523) (not e!218135))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!355931 (= res!197523 (and (= (size!9607 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9608 _keys!1456) (size!9607 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!13497 () Bool)

(assert (=> mapIsEmpty!13497 mapRes!13497))

(declare-fun b!355932 () Bool)

(declare-fun e!218134 () Bool)

(declare-fun tp_is_empty!7993 () Bool)

(assert (=> b!355932 (= e!218134 tp_is_empty!7993)))

(declare-fun res!197522 () Bool)

(assert (=> start!35548 (=> (not res!197522) (not e!218135))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35548 (= res!197522 (validMask!0 mask!1842))))

(assert (=> start!35548 e!218135))

(assert (=> start!35548 true))

(declare-fun e!218131 () Bool)

(declare-fun array_inv!6816 (array!19529) Bool)

(assert (=> start!35548 (and (array_inv!6816 _values!1208) e!218131)))

(declare-fun array_inv!6817 (array!19531) Bool)

(assert (=> start!35548 (array_inv!6817 _keys!1456)))

(declare-fun b!355933 () Bool)

(assert (=> b!355933 (= e!218132 tp_is_empty!7993)))

(declare-fun b!355934 () Bool)

(assert (=> b!355934 (= e!218131 (and e!218134 mapRes!13497))))

(declare-fun condMapEmpty!13497 () Bool)

(declare-fun mapDefault!13497 () ValueCell!3653)

