; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35570 () Bool)

(assert start!35570)

(declare-fun b!356257 () Bool)

(declare-fun e!218299 () Bool)

(declare-fun tp_is_empty!8015 () Bool)

(assert (=> b!356257 (= e!218299 tp_is_empty!8015)))

(declare-fun res!197756 () Bool)

(declare-fun e!218297 () Bool)

(assert (=> start!35570 (=> (not res!197756) (not e!218297))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35570 (= res!197756 (validMask!0 mask!1842))))

(assert (=> start!35570 e!218297))

(assert (=> start!35570 tp_is_empty!8015))

(assert (=> start!35570 true))

(declare-datatypes ((array!19569 0))(
  ( (array!19570 (arr!9275 (Array (_ BitVec 32) (_ BitVec 64))) (size!9627 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19569)

(declare-fun array_inv!6826 (array!19569) Bool)

(assert (=> start!35570 (array_inv!6826 _keys!1456)))

(declare-datatypes ((V!11663 0))(
  ( (V!11664 (val!4052 Int)) )
))
(declare-datatypes ((ValueCell!3664 0))(
  ( (ValueCellFull!3664 (v!6242 V!11663)) (EmptyCell!3664) )
))
(declare-datatypes ((array!19571 0))(
  ( (array!19572 (arr!9276 (Array (_ BitVec 32) ValueCell!3664)) (size!9628 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19571)

(declare-fun e!218300 () Bool)

(declare-fun array_inv!6827 (array!19571) Bool)

(assert (=> start!35570 (and (array_inv!6827 _values!1208) e!218300)))

(declare-fun b!356258 () Bool)

(declare-fun res!197757 () Bool)

(assert (=> b!356258 (=> (not res!197757) (not e!218297))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k!1077 () (_ BitVec 64))

(assert (=> b!356258 (= res!197757 (not (= (select (arr!9275 _keys!1456) from!1805) k!1077)))))

(declare-fun b!356259 () Bool)

(declare-fun res!197758 () Bool)

(assert (=> b!356259 (=> (not res!197758) (not e!218297))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!356259 (= res!197758 (validKeyInArray!0 k!1077))))

(declare-fun mapNonEmpty!13530 () Bool)

(declare-fun mapRes!13530 () Bool)

(declare-fun tp!27507 () Bool)

(assert (=> mapNonEmpty!13530 (= mapRes!13530 (and tp!27507 e!218299))))

(declare-fun mapRest!13530 () (Array (_ BitVec 32) ValueCell!3664))

(declare-fun mapKey!13530 () (_ BitVec 32))

(declare-fun mapValue!13530 () ValueCell!3664)

(assert (=> mapNonEmpty!13530 (= (arr!9276 _values!1208) (store mapRest!13530 mapKey!13530 mapValue!13530))))

(declare-fun b!356260 () Bool)

(declare-fun res!197753 () Bool)

(assert (=> b!356260 (=> (not res!197753) (not e!218297))))

(assert (=> b!356260 (= res!197753 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9627 _keys!1456))))))

(declare-fun b!356261 () Bool)

(declare-fun res!197754 () Bool)

(assert (=> b!356261 (=> (not res!197754) (not e!218297))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!356261 (= res!197754 (and (= (size!9628 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9627 _keys!1456) (size!9628 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!356262 () Bool)

(declare-fun e!218298 () Bool)

(assert (=> b!356262 (= e!218300 (and e!218298 mapRes!13530))))

(declare-fun condMapEmpty!13530 () Bool)

(declare-fun mapDefault!13530 () ValueCell!3664)

