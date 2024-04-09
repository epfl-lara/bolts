; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111314 () Bool)

(assert start!111314)

(declare-fun b!1316895 () Bool)

(declare-fun res!874167 () Bool)

(declare-fun e!751377 () Bool)

(assert (=> b!1316895 (=> (not res!874167) (not e!751377))))

(declare-datatypes ((List!30470 0))(
  ( (Nil!30467) (Cons!30466 (h!31675 (_ BitVec 64)) (t!44085 List!30470)) )
))
(declare-fun noDuplicate!2097 (List!30470) Bool)

(assert (=> b!1316895 (= res!874167 (noDuplicate!2097 Nil!30467))))

(declare-fun b!1316896 () Bool)

(declare-fun e!751378 () Bool)

(declare-fun contains!8589 (List!30470 (_ BitVec 64)) Bool)

(assert (=> b!1316896 (= e!751378 (contains!8589 Nil!30467 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1316897 () Bool)

(declare-fun res!874168 () Bool)

(assert (=> b!1316897 (=> (not res!874168) (not e!751377))))

(declare-datatypes ((array!88447 0))(
  ( (array!88448 (arr!42694 (Array (_ BitVec 32) (_ BitVec 64))) (size!43245 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88447)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88447 (_ BitVec 32)) Bool)

(assert (=> b!1316897 (= res!874168 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1316898 () Bool)

(declare-fun res!874169 () Bool)

(assert (=> b!1316898 (=> (not res!874169) (not e!751377))))

(assert (=> b!1316898 (= res!874169 (and (bvsle #b00000000000000000000000000000000 (size!43245 _keys!1609)) (bvslt (size!43245 _keys!1609) #b01111111111111111111111111111111)))))

(declare-fun b!1316899 () Bool)

(assert (=> b!1316899 (= e!751377 e!751378)))

(declare-fun res!874171 () Bool)

(assert (=> b!1316899 (=> res!874171 e!751378)))

(assert (=> b!1316899 (= res!874171 (contains!8589 Nil!30467 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!55295 () Bool)

(declare-fun mapRes!55295 () Bool)

(assert (=> mapIsEmpty!55295 mapRes!55295))

(declare-fun b!1316900 () Bool)

(declare-fun e!751381 () Bool)

(declare-fun tp_is_empty!35767 () Bool)

(assert (=> b!1316900 (= e!751381 tp_is_empty!35767)))

(declare-fun res!874172 () Bool)

(assert (=> start!111314 (=> (not res!874172) (not e!751377))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111314 (= res!874172 (validMask!0 mask!2019))))

(assert (=> start!111314 e!751377))

(assert (=> start!111314 true))

(declare-datatypes ((V!52793 0))(
  ( (V!52794 (val!17958 Int)) )
))
(declare-datatypes ((ValueCell!16985 0))(
  ( (ValueCellFull!16985 (v!20585 V!52793)) (EmptyCell!16985) )
))
(declare-datatypes ((array!88449 0))(
  ( (array!88450 (arr!42695 (Array (_ BitVec 32) ValueCell!16985)) (size!43246 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88449)

(declare-fun e!751380 () Bool)

(declare-fun array_inv!32209 (array!88449) Bool)

(assert (=> start!111314 (and (array_inv!32209 _values!1337) e!751380)))

(declare-fun array_inv!32210 (array!88447) Bool)

(assert (=> start!111314 (array_inv!32210 _keys!1609)))

(declare-fun b!1316901 () Bool)

(declare-fun res!874170 () Bool)

(assert (=> b!1316901 (=> (not res!874170) (not e!751377))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1316901 (= res!874170 (and (= (size!43246 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43245 _keys!1609) (size!43246 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1316902 () Bool)

(declare-fun e!751382 () Bool)

(assert (=> b!1316902 (= e!751380 (and e!751382 mapRes!55295))))

(declare-fun condMapEmpty!55295 () Bool)

(declare-fun mapDefault!55295 () ValueCell!16985)

