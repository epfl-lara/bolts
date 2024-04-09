; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84104 () Bool)

(assert start!84104)

(declare-fun b_free!19831 () Bool)

(declare-fun b_next!19831 () Bool)

(assert (=> start!84104 (= b_free!19831 (not b_next!19831))))

(declare-fun tp!69017 () Bool)

(declare-fun b_and!31763 () Bool)

(assert (=> start!84104 (= tp!69017 b_and!31763)))

(declare-fun b!982934 () Bool)

(declare-fun res!657902 () Bool)

(declare-fun e!554075 () Bool)

(assert (=> b!982934 (=> (not res!657902) (not e!554075))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!982934 (= res!657902 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!982935 () Bool)

(declare-fun e!554073 () Bool)

(declare-fun e!554077 () Bool)

(declare-fun mapRes!36347 () Bool)

(assert (=> b!982935 (= e!554073 (and e!554077 mapRes!36347))))

(declare-fun condMapEmpty!36347 () Bool)

(declare-datatypes ((V!35489 0))(
  ( (V!35490 (val!11490 Int)) )
))
(declare-datatypes ((ValueCell!10958 0))(
  ( (ValueCellFull!10958 (v!14052 V!35489)) (EmptyCell!10958) )
))
(declare-datatypes ((array!61743 0))(
  ( (array!61744 (arr!29725 (Array (_ BitVec 32) ValueCell!10958)) (size!30205 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61743)

(declare-fun mapDefault!36347 () ValueCell!10958)

