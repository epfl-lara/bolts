; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97736 () Bool)

(assert start!97736)

(declare-fun b!1116862 () Bool)

(declare-fun res!745851 () Bool)

(declare-fun e!636324 () Bool)

(assert (=> b!1116862 (=> (not res!745851) (not e!636324))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1116862 (= res!745851 (validMask!0 mask!1564))))

(declare-fun b!1116863 () Bool)

(declare-fun e!636327 () Bool)

(assert (=> b!1116863 (= e!636324 e!636327)))

(declare-fun res!745850 () Bool)

(assert (=> b!1116863 (=> (not res!745850) (not e!636327))))

(declare-datatypes ((array!72700 0))(
  ( (array!72701 (arr!34999 (Array (_ BitVec 32) (_ BitVec 64))) (size!35536 (_ BitVec 32))) )
))
(declare-fun lt!497180 () array!72700)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72700 (_ BitVec 32)) Bool)

(assert (=> b!1116863 (= res!745850 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497180 mask!1564))))

(declare-fun _keys!1208 () array!72700)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1116863 (= lt!497180 (array!72701 (store (arr!34999 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35536 _keys!1208)))))

(declare-fun b!1116864 () Bool)

(declare-fun e!636328 () Bool)

(declare-fun e!636326 () Bool)

(declare-fun mapRes!43714 () Bool)

(assert (=> b!1116864 (= e!636328 (and e!636326 mapRes!43714))))

(declare-fun condMapEmpty!43714 () Bool)

(declare-datatypes ((V!42369 0))(
  ( (V!42370 (val!14022 Int)) )
))
(declare-datatypes ((ValueCell!13256 0))(
  ( (ValueCellFull!13256 (v!16656 V!42369)) (EmptyCell!13256) )
))
(declare-datatypes ((array!72702 0))(
  ( (array!72703 (arr!35000 (Array (_ BitVec 32) ValueCell!13256)) (size!35537 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72702)

(declare-fun mapDefault!43714 () ValueCell!13256)

