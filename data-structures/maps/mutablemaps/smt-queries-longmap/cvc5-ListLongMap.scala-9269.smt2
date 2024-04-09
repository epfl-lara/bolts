; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110998 () Bool)

(assert start!110998)

(declare-fun b_free!29797 () Bool)

(declare-fun b_next!29797 () Bool)

(assert (=> start!110998 (= b_free!29797 (not b_next!29797))))

(declare-fun tp!104714 () Bool)

(declare-fun b_and!48015 () Bool)

(assert (=> start!110998 (= tp!104714 b_and!48015)))

(declare-fun mapNonEmpty!54919 () Bool)

(declare-fun mapRes!54919 () Bool)

(declare-fun tp!104713 () Bool)

(declare-fun e!749314 () Bool)

(assert (=> mapNonEmpty!54919 (= mapRes!54919 (and tp!104713 e!749314))))

(declare-datatypes ((V!52473 0))(
  ( (V!52474 (val!17838 Int)) )
))
(declare-datatypes ((ValueCell!16865 0))(
  ( (ValueCellFull!16865 (v!20463 V!52473)) (EmptyCell!16865) )
))
(declare-fun mapRest!54919 () (Array (_ BitVec 32) ValueCell!16865))

(declare-fun mapValue!54919 () ValueCell!16865)

(declare-datatypes ((array!87995 0))(
  ( (array!87996 (arr!42473 (Array (_ BitVec 32) ValueCell!16865)) (size!43024 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87995)

(declare-fun mapKey!54919 () (_ BitVec 32))

(assert (=> mapNonEmpty!54919 (= (arr!42473 _values!1354) (store mapRest!54919 mapKey!54919 mapValue!54919))))

(declare-fun b!1313601 () Bool)

(declare-fun e!749312 () Bool)

(declare-fun e!749313 () Bool)

(assert (=> b!1313601 (= e!749312 (and e!749313 mapRes!54919))))

(declare-fun condMapEmpty!54919 () Bool)

(declare-fun mapDefault!54919 () ValueCell!16865)

