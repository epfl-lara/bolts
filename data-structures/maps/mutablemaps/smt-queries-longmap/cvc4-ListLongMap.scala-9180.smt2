; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110456 () Bool)

(assert start!110456)

(declare-fun b!1306360 () Bool)

(declare-fun e!745306 () Bool)

(declare-fun tp_is_empty!34997 () Bool)

(assert (=> b!1306360 (= e!745306 tp_is_empty!34997)))

(declare-fun b!1306361 () Bool)

(declare-fun res!867338 () Bool)

(declare-fun e!745307 () Bool)

(assert (=> b!1306361 (=> (not res!867338) (not e!745307))))

(declare-datatypes ((array!86983 0))(
  ( (array!86984 (arr!41968 (Array (_ BitVec 32) (_ BitVec 64))) (size!42519 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!86983)

(assert (=> b!1306361 (= res!867338 (and (bvsle #b00000000000000000000000000000000 (size!42519 _keys!1628)) (bvslt (size!42519 _keys!1628) #b01111111111111111111111111111111)))))

(declare-fun b!1306362 () Bool)

(declare-fun e!745309 () Bool)

(assert (=> b!1306362 (= e!745309 tp_is_empty!34997)))

(declare-fun b!1306363 () Bool)

(declare-fun res!867337 () Bool)

(assert (=> b!1306363 (=> (not res!867337) (not e!745307))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86983 (_ BitVec 32)) Bool)

(assert (=> b!1306363 (= res!867337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1306364 () Bool)

(declare-fun e!745310 () Bool)

(declare-datatypes ((List!29977 0))(
  ( (Nil!29974) (Cons!29973 (h!31182 (_ BitVec 64)) (t!43590 List!29977)) )
))
(declare-fun contains!8348 (List!29977 (_ BitVec 64)) Bool)

(assert (=> b!1306364 (= e!745310 (contains!8348 Nil!29974 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!867340 () Bool)

(assert (=> start!110456 (=> (not res!867340) (not e!745307))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110456 (= res!867340 (validMask!0 mask!2040))))

(assert (=> start!110456 e!745307))

(assert (=> start!110456 true))

(declare-datatypes ((V!51765 0))(
  ( (V!51766 (val!17573 Int)) )
))
(declare-datatypes ((ValueCell!16600 0))(
  ( (ValueCellFull!16600 (v!20197 V!51765)) (EmptyCell!16600) )
))
(declare-datatypes ((array!86985 0))(
  ( (array!86986 (arr!41969 (Array (_ BitVec 32) ValueCell!16600)) (size!42520 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!86985)

(declare-fun e!745311 () Bool)

(declare-fun array_inv!31733 (array!86985) Bool)

(assert (=> start!110456 (and (array_inv!31733 _values!1354) e!745311)))

(declare-fun array_inv!31734 (array!86983) Bool)

(assert (=> start!110456 (array_inv!31734 _keys!1628)))

(declare-fun mapNonEmpty!54121 () Bool)

(declare-fun mapRes!54121 () Bool)

(declare-fun tp!103202 () Bool)

(assert (=> mapNonEmpty!54121 (= mapRes!54121 (and tp!103202 e!745306))))

(declare-fun mapValue!54121 () ValueCell!16600)

(declare-fun mapRest!54121 () (Array (_ BitVec 32) ValueCell!16600))

(declare-fun mapKey!54121 () (_ BitVec 32))

(assert (=> mapNonEmpty!54121 (= (arr!41969 _values!1354) (store mapRest!54121 mapKey!54121 mapValue!54121))))

(declare-fun b!1306365 () Bool)

(declare-fun res!867339 () Bool)

(assert (=> b!1306365 (=> (not res!867339) (not e!745307))))

(declare-fun noDuplicate!2094 (List!29977) Bool)

(assert (=> b!1306365 (= res!867339 (noDuplicate!2094 Nil!29974))))

(declare-fun b!1306366 () Bool)

(declare-fun res!867342 () Bool)

(assert (=> b!1306366 (=> (not res!867342) (not e!745307))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1306366 (= res!867342 (and (= (size!42520 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42519 _keys!1628) (size!42520 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1306367 () Bool)

(assert (=> b!1306367 (= e!745307 e!745310)))

(declare-fun res!867341 () Bool)

(assert (=> b!1306367 (=> res!867341 e!745310)))

(assert (=> b!1306367 (= res!867341 (contains!8348 Nil!29974 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1306368 () Bool)

(assert (=> b!1306368 (= e!745311 (and e!745309 mapRes!54121))))

(declare-fun condMapEmpty!54121 () Bool)

(declare-fun mapDefault!54121 () ValueCell!16600)

