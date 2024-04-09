; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84072 () Bool)

(assert start!84072)

(declare-fun b_free!19799 () Bool)

(declare-fun b_next!19799 () Bool)

(assert (=> start!84072 (= b_free!19799 (not b_next!19799))))

(declare-fun tp!68920 () Bool)

(declare-fun b_and!31699 () Bool)

(assert (=> start!84072 (= tp!68920 b_and!31699)))

(declare-fun b!982374 () Bool)

(declare-fun e!553786 () Bool)

(declare-fun e!553790 () Bool)

(assert (=> b!982374 (= e!553786 e!553790)))

(declare-fun res!657513 () Bool)

(assert (=> b!982374 (=> (not res!657513) (not e!553790))))

(declare-datatypes ((array!61679 0))(
  ( (array!61680 (arr!29693 (Array (_ BitVec 32) (_ BitVec 64))) (size!30173 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61679)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!982374 (= res!657513 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29693 _keys!1544) from!1932))))))

(declare-datatypes ((V!35445 0))(
  ( (V!35446 (val!11474 Int)) )
))
(declare-datatypes ((ValueCell!10942 0))(
  ( (ValueCellFull!10942 (v!14036 V!35445)) (EmptyCell!10942) )
))
(declare-datatypes ((array!61681 0))(
  ( (array!61682 (arr!29694 (Array (_ BitVec 32) ValueCell!10942)) (size!30174 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61681)

(declare-fun lt!436120 () V!35445)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15419 (ValueCell!10942 V!35445) V!35445)

(declare-fun dynLambda!1804 (Int (_ BitVec 64)) V!35445)

(assert (=> b!982374 (= lt!436120 (get!15419 (select (arr!29694 _values!1278) from!1932) (dynLambda!1804 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun minValue!1220 () V!35445)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35445)

(declare-datatypes ((tuple2!14802 0))(
  ( (tuple2!14803 (_1!7411 (_ BitVec 64)) (_2!7411 V!35445)) )
))
(declare-datatypes ((List!20709 0))(
  ( (Nil!20706) (Cons!20705 (h!21867 tuple2!14802) (t!29466 List!20709)) )
))
(declare-datatypes ((ListLongMap!13513 0))(
  ( (ListLongMap!13514 (toList!6772 List!20709)) )
))
(declare-fun lt!436116 () ListLongMap!13513)

(declare-fun getCurrentListMapNoExtraKeys!3431 (array!61679 array!61681 (_ BitVec 32) (_ BitVec 32) V!35445 V!35445 (_ BitVec 32) Int) ListLongMap!13513)

(assert (=> b!982374 (= lt!436116 (getCurrentListMapNoExtraKeys!3431 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!982375 () Bool)

(declare-fun res!657512 () Bool)

(assert (=> b!982375 (=> (not res!657512) (not e!553786))))

(assert (=> b!982375 (= res!657512 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30173 _keys!1544))))))

(declare-fun b!982376 () Bool)

(declare-fun res!657519 () Bool)

(assert (=> b!982376 (=> (not res!657519) (not e!553786))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61679 (_ BitVec 32)) Bool)

(assert (=> b!982376 (= res!657519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!982377 () Bool)

(declare-fun res!657517 () Bool)

(assert (=> b!982377 (=> (not res!657517) (not e!553786))))

(assert (=> b!982377 (= res!657517 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!982378 () Bool)

(declare-fun res!657515 () Bool)

(assert (=> b!982378 (=> (not res!657515) (not e!553786))))

(assert (=> b!982378 (= res!657515 (and (= (size!30174 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30173 _keys!1544) (size!30174 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!982379 () Bool)

(declare-fun e!553787 () Bool)

(declare-fun e!553785 () Bool)

(declare-fun mapRes!36299 () Bool)

(assert (=> b!982379 (= e!553787 (and e!553785 mapRes!36299))))

(declare-fun condMapEmpty!36299 () Bool)

(declare-fun mapDefault!36299 () ValueCell!10942)

