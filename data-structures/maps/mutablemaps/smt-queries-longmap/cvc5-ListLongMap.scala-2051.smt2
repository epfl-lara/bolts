; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35482 () Bool)

(assert start!35482)

(declare-fun b_free!7861 () Bool)

(declare-fun b_next!7861 () Bool)

(assert (=> start!35482 (= b_free!7861 (not b_next!7861))))

(declare-fun tp!27369 () Bool)

(declare-fun b_and!15121 () Bool)

(assert (=> start!35482 (= tp!27369 b_and!15121)))

(declare-fun b!355293 () Bool)

(declare-fun res!197187 () Bool)

(declare-fun e!217639 () Bool)

(assert (=> b!355293 (=> (not res!197187) (not e!217639))))

(declare-datatypes ((array!19401 0))(
  ( (array!19402 (arr!9191 (Array (_ BitVec 32) (_ BitVec 64))) (size!9543 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19401)

(declare-datatypes ((List!5356 0))(
  ( (Nil!5353) (Cons!5352 (h!6208 (_ BitVec 64)) (t!10514 List!5356)) )
))
(declare-fun arrayNoDuplicates!0 (array!19401 (_ BitVec 32) List!5356) Bool)

(assert (=> b!355293 (= res!197187 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5353))))

(declare-fun mapIsEmpty!13398 () Bool)

(declare-fun mapRes!13398 () Bool)

(assert (=> mapIsEmpty!13398 mapRes!13398))

(declare-fun res!197185 () Bool)

(assert (=> start!35482 (=> (not res!197185) (not e!217639))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35482 (= res!197185 (validMask!0 mask!1842))))

(assert (=> start!35482 e!217639))

(declare-fun tp_is_empty!7927 () Bool)

(assert (=> start!35482 tp_is_empty!7927))

(assert (=> start!35482 true))

(assert (=> start!35482 tp!27369))

(declare-fun array_inv!6768 (array!19401) Bool)

(assert (=> start!35482 (array_inv!6768 _keys!1456)))

(declare-datatypes ((V!11547 0))(
  ( (V!11548 (val!4008 Int)) )
))
(declare-datatypes ((ValueCell!3620 0))(
  ( (ValueCellFull!3620 (v!6198 V!11547)) (EmptyCell!3620) )
))
(declare-datatypes ((array!19403 0))(
  ( (array!19404 (arr!9192 (Array (_ BitVec 32) ValueCell!3620)) (size!9544 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19403)

(declare-fun e!217636 () Bool)

(declare-fun array_inv!6769 (array!19403) Bool)

(assert (=> start!35482 (and (array_inv!6769 _values!1208) e!217636)))

(declare-fun b!355294 () Bool)

(declare-fun e!217638 () Bool)

(assert (=> b!355294 (= e!217638 tp_is_empty!7927)))

(declare-fun b!355295 () Bool)

(declare-fun res!197189 () Bool)

(assert (=> b!355295 (=> (not res!197189) (not e!217639))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!355295 (= res!197189 (validKeyInArray!0 k!1077))))

(declare-fun mapNonEmpty!13398 () Bool)

(declare-fun tp!27368 () Bool)

(declare-fun e!217640 () Bool)

(assert (=> mapNonEmpty!13398 (= mapRes!13398 (and tp!27368 e!217640))))

(declare-fun mapRest!13398 () (Array (_ BitVec 32) ValueCell!3620))

(declare-fun mapKey!13398 () (_ BitVec 32))

(declare-fun mapValue!13398 () ValueCell!3620)

(assert (=> mapNonEmpty!13398 (= (arr!9192 _values!1208) (store mapRest!13398 mapKey!13398 mapValue!13398))))

(declare-fun b!355296 () Bool)

(declare-fun res!197183 () Bool)

(assert (=> b!355296 (=> (not res!197183) (not e!217639))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19401 (_ BitVec 32)) Bool)

(assert (=> b!355296 (= res!197183 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!355297 () Bool)

(declare-fun res!197186 () Bool)

(assert (=> b!355297 (=> (not res!197186) (not e!217639))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!355297 (= res!197186 (and (= (size!9544 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9543 _keys!1456) (size!9544 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!355298 () Bool)

(declare-fun res!197184 () Bool)

(assert (=> b!355298 (=> (not res!197184) (not e!217639))))

(declare-fun from!1805 () (_ BitVec 32))

(assert (=> b!355298 (= res!197184 (validKeyInArray!0 (select (arr!9191 _keys!1456) from!1805)))))

(declare-fun b!355299 () Bool)

(declare-fun res!197190 () Bool)

(assert (=> b!355299 (=> (not res!197190) (not e!217639))))

(assert (=> b!355299 (= res!197190 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9543 _keys!1456))))))

(declare-fun b!355300 () Bool)

(assert (=> b!355300 (= e!217636 (and e!217638 mapRes!13398))))

(declare-fun condMapEmpty!13398 () Bool)

(declare-fun mapDefault!13398 () ValueCell!3620)

