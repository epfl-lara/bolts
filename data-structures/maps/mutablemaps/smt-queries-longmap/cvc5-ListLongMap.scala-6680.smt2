; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84080 () Bool)

(assert start!84080)

(declare-fun b_free!19807 () Bool)

(declare-fun b_next!19807 () Bool)

(assert (=> start!84080 (= b_free!19807 (not b_next!19807))))

(declare-fun tp!68945 () Bool)

(declare-fun b_and!31715 () Bool)

(assert (=> start!84080 (= tp!68945 b_and!31715)))

(declare-fun b!982514 () Bool)

(declare-fun res!657610 () Bool)

(declare-fun e!553858 () Bool)

(assert (=> b!982514 (=> (not res!657610) (not e!553858))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!982514 (= res!657610 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!982515 () Bool)

(declare-fun res!657612 () Bool)

(assert (=> b!982515 (=> (not res!657612) (not e!553858))))

(declare-datatypes ((array!61695 0))(
  ( (array!61696 (arr!29701 (Array (_ BitVec 32) (_ BitVec 64))) (size!30181 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61695)

(declare-datatypes ((List!20714 0))(
  ( (Nil!20711) (Cons!20710 (h!21872 (_ BitVec 64)) (t!29479 List!20714)) )
))
(declare-fun arrayNoDuplicates!0 (array!61695 (_ BitVec 32) List!20714) Bool)

(assert (=> b!982515 (= res!657612 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20711))))

(declare-fun b!982516 () Bool)

(declare-fun res!657609 () Bool)

(assert (=> b!982516 (=> (not res!657609) (not e!553858))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61695 (_ BitVec 32)) Bool)

(assert (=> b!982516 (= res!657609 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!982517 () Bool)

(declare-fun e!553860 () Bool)

(declare-fun tp_is_empty!22855 () Bool)

(assert (=> b!982517 (= e!553860 tp_is_empty!22855)))

(declare-fun b!982518 () Bool)

(declare-fun res!657613 () Bool)

(assert (=> b!982518 (=> (not res!657613) (not e!553858))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!982518 (= res!657613 (validKeyInArray!0 (select (arr!29701 _keys!1544) from!1932)))))

(declare-fun b!982519 () Bool)

(declare-fun e!553857 () Bool)

(assert (=> b!982519 (= e!553858 e!553857)))

(declare-fun res!657615 () Bool)

(assert (=> b!982519 (=> (not res!657615) (not e!553857))))

(assert (=> b!982519 (= res!657615 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29701 _keys!1544) from!1932))))))

(declare-datatypes ((V!35457 0))(
  ( (V!35458 (val!11478 Int)) )
))
(declare-fun lt!436179 () V!35457)

(declare-datatypes ((ValueCell!10946 0))(
  ( (ValueCellFull!10946 (v!14040 V!35457)) (EmptyCell!10946) )
))
(declare-datatypes ((array!61697 0))(
  ( (array!61698 (arr!29702 (Array (_ BitVec 32) ValueCell!10946)) (size!30182 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61697)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15427 (ValueCell!10946 V!35457) V!35457)

(declare-fun dynLambda!1808 (Int (_ BitVec 64)) V!35457)

(assert (=> b!982519 (= lt!436179 (get!15427 (select (arr!29702 _values!1278) from!1932) (dynLambda!1808 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35457)

(declare-datatypes ((tuple2!14810 0))(
  ( (tuple2!14811 (_1!7415 (_ BitVec 64)) (_2!7415 V!35457)) )
))
(declare-datatypes ((List!20715 0))(
  ( (Nil!20712) (Cons!20711 (h!21873 tuple2!14810) (t!29480 List!20715)) )
))
(declare-datatypes ((ListLongMap!13521 0))(
  ( (ListLongMap!13522 (toList!6776 List!20715)) )
))
(declare-fun lt!436180 () ListLongMap!13521)

(declare-fun zeroValue!1220 () V!35457)

(declare-fun getCurrentListMapNoExtraKeys!3435 (array!61695 array!61697 (_ BitVec 32) (_ BitVec 32) V!35457 V!35457 (_ BitVec 32) Int) ListLongMap!13521)

(assert (=> b!982519 (= lt!436180 (getCurrentListMapNoExtraKeys!3435 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!982520 () Bool)

(declare-fun e!553861 () Bool)

(declare-fun e!553859 () Bool)

(declare-fun mapRes!36311 () Bool)

(assert (=> b!982520 (= e!553861 (and e!553859 mapRes!36311))))

(declare-fun condMapEmpty!36311 () Bool)

(declare-fun mapDefault!36311 () ValueCell!10946)

