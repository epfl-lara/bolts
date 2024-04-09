; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110566 () Bool)

(assert start!110566)

(declare-fun b_free!29365 () Bool)

(declare-fun b_next!29365 () Bool)

(assert (=> start!110566 (= b_free!29365 (not b_next!29365))))

(declare-fun tp!103418 () Bool)

(declare-fun b_and!47583 () Bool)

(assert (=> start!110566 (= tp!103418 b_and!47583)))

(declare-fun b!1307418 () Bool)

(declare-fun res!867944 () Bool)

(declare-fun e!746075 () Bool)

(assert (=> b!1307418 (=> (not res!867944) (not e!746075))))

(declare-datatypes ((array!87165 0))(
  ( (array!87166 (arr!42058 (Array (_ BitVec 32) (_ BitVec 64))) (size!42609 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87165)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87165 (_ BitVec 32)) Bool)

(assert (=> b!1307418 (= res!867944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!54271 () Bool)

(declare-fun mapRes!54271 () Bool)

(assert (=> mapIsEmpty!54271 mapRes!54271))

(declare-fun b!1307419 () Bool)

(declare-fun e!746073 () Bool)

(declare-fun tp_is_empty!35095 () Bool)

(assert (=> b!1307419 (= e!746073 tp_is_empty!35095)))

(declare-fun mapNonEmpty!54271 () Bool)

(declare-fun tp!103417 () Bool)

(declare-fun e!746074 () Bool)

(assert (=> mapNonEmpty!54271 (= mapRes!54271 (and tp!103417 e!746074))))

(declare-datatypes ((V!51897 0))(
  ( (V!51898 (val!17622 Int)) )
))
(declare-datatypes ((ValueCell!16649 0))(
  ( (ValueCellFull!16649 (v!20247 V!51897)) (EmptyCell!16649) )
))
(declare-fun mapValue!54271 () ValueCell!16649)

(declare-fun mapKey!54271 () (_ BitVec 32))

(declare-fun mapRest!54271 () (Array (_ BitVec 32) ValueCell!16649))

(declare-datatypes ((array!87167 0))(
  ( (array!87168 (arr!42059 (Array (_ BitVec 32) ValueCell!16649)) (size!42610 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87167)

(assert (=> mapNonEmpty!54271 (= (arr!42059 _values!1354) (store mapRest!54271 mapKey!54271 mapValue!54271))))

(declare-fun b!1307420 () Bool)

(declare-fun res!867941 () Bool)

(assert (=> b!1307420 (=> (not res!867941) (not e!746075))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1307420 (= res!867941 (and (= (size!42610 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42609 _keys!1628) (size!42610 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1307422 () Bool)

(assert (=> b!1307422 (= e!746075 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!51897)

(declare-fun zeroValue!1296 () V!51897)

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun lt!584998 () Bool)

(declare-datatypes ((tuple2!22848 0))(
  ( (tuple2!22849 (_1!11434 (_ BitVec 64)) (_2!11434 V!51897)) )
))
(declare-datatypes ((List!30021 0))(
  ( (Nil!30018) (Cons!30017 (h!31226 tuple2!22848) (t!43634 List!30021)) )
))
(declare-datatypes ((ListLongMap!20517 0))(
  ( (ListLongMap!20518 (toList!10274 List!30021)) )
))
(declare-fun contains!8360 (ListLongMap!20517 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5230 (array!87165 array!87167 (_ BitVec 32) (_ BitVec 32) V!51897 V!51897 (_ BitVec 32) Int) ListLongMap!20517)

(assert (=> b!1307422 (= lt!584998 (contains!8360 (getCurrentListMap!5230 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1307423 () Bool)

(assert (=> b!1307423 (= e!746074 tp_is_empty!35095)))

(declare-fun b!1307424 () Bool)

(declare-fun res!867940 () Bool)

(assert (=> b!1307424 (=> (not res!867940) (not e!746075))))

(assert (=> b!1307424 (= res!867940 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42609 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1307425 () Bool)

(declare-fun res!867943 () Bool)

(assert (=> b!1307425 (=> (not res!867943) (not e!746075))))

(declare-datatypes ((List!30022 0))(
  ( (Nil!30019) (Cons!30018 (h!31227 (_ BitVec 64)) (t!43635 List!30022)) )
))
(declare-fun arrayNoDuplicates!0 (array!87165 (_ BitVec 32) List!30022) Bool)

(assert (=> b!1307425 (= res!867943 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30019))))

(declare-fun b!1307421 () Bool)

(declare-fun e!746072 () Bool)

(assert (=> b!1307421 (= e!746072 (and e!746073 mapRes!54271))))

(declare-fun condMapEmpty!54271 () Bool)

(declare-fun mapDefault!54271 () ValueCell!16649)

