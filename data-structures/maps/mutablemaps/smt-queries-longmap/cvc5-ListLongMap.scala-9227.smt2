; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110746 () Bool)

(assert start!110746)

(declare-fun b_free!29545 () Bool)

(declare-fun b_next!29545 () Bool)

(assert (=> start!110746 (= b_free!29545 (not b_next!29545))))

(declare-fun tp!103957 () Bool)

(declare-fun b_and!47763 () Bool)

(assert (=> start!110746 (= tp!103957 b_and!47763)))

(declare-fun b!1310055 () Bool)

(declare-fun res!869770 () Bool)

(declare-fun e!747422 () Bool)

(assert (=> b!1310055 (=> (not res!869770) (not e!747422))))

(declare-datatypes ((array!87505 0))(
  ( (array!87506 (arr!42228 (Array (_ BitVec 32) (_ BitVec 64))) (size!42779 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87505)

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1310055 (= res!869770 (validKeyInArray!0 (select (arr!42228 _keys!1628) from!2020)))))

(declare-fun mapNonEmpty!54541 () Bool)

(declare-fun mapRes!54541 () Bool)

(declare-fun tp!103958 () Bool)

(declare-fun e!747423 () Bool)

(assert (=> mapNonEmpty!54541 (= mapRes!54541 (and tp!103958 e!747423))))

(declare-fun mapKey!54541 () (_ BitVec 32))

(declare-datatypes ((V!52137 0))(
  ( (V!52138 (val!17712 Int)) )
))
(declare-datatypes ((ValueCell!16739 0))(
  ( (ValueCellFull!16739 (v!20337 V!52137)) (EmptyCell!16739) )
))
(declare-fun mapRest!54541 () (Array (_ BitVec 32) ValueCell!16739))

(declare-fun mapValue!54541 () ValueCell!16739)

(declare-datatypes ((array!87507 0))(
  ( (array!87508 (arr!42229 (Array (_ BitVec 32) ValueCell!16739)) (size!42780 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87507)

(assert (=> mapNonEmpty!54541 (= (arr!42229 _values!1354) (store mapRest!54541 mapKey!54541 mapValue!54541))))

(declare-fun b!1310056 () Bool)

(declare-fun e!747424 () Bool)

(declare-fun e!747421 () Bool)

(assert (=> b!1310056 (= e!747424 (and e!747421 mapRes!54541))))

(declare-fun condMapEmpty!54541 () Bool)

(declare-fun mapDefault!54541 () ValueCell!16739)

