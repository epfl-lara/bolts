; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84206 () Bool)

(assert start!84206)

(declare-fun b_free!19879 () Bool)

(declare-fun b_next!19879 () Bool)

(assert (=> start!84206 (= b_free!19879 (not b_next!19879))))

(declare-fun tp!69241 () Bool)

(declare-fun b_and!31853 () Bool)

(assert (=> start!84206 (= tp!69241 b_and!31853)))

(declare-fun b!984272 () Bool)

(declare-fun res!658740 () Bool)

(declare-fun e!554902 () Bool)

(assert (=> b!984272 (=> (not res!658740) (not e!554902))))

(declare-datatypes ((array!61931 0))(
  ( (array!61932 (arr!29819 (Array (_ BitVec 32) (_ BitVec 64))) (size!30299 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61931)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61931 (_ BitVec 32)) Bool)

(assert (=> b!984272 (= res!658740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!984273 () Bool)

(declare-fun res!658738 () Bool)

(assert (=> b!984273 (=> (not res!658738) (not e!554902))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!984273 (= res!658738 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!984274 () Bool)

(declare-fun res!658734 () Bool)

(assert (=> b!984274 (=> (not res!658734) (not e!554902))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!984274 (= res!658734 (validKeyInArray!0 (select (arr!29819 _keys!1544) from!1932)))))

(declare-fun b!984275 () Bool)

(declare-fun e!554905 () Bool)

(declare-fun e!554906 () Bool)

(declare-fun mapRes!36500 () Bool)

(assert (=> b!984275 (= e!554905 (and e!554906 mapRes!36500))))

(declare-fun condMapEmpty!36500 () Bool)

(declare-datatypes ((V!35625 0))(
  ( (V!35626 (val!11541 Int)) )
))
(declare-datatypes ((ValueCell!11009 0))(
  ( (ValueCellFull!11009 (v!14103 V!35625)) (EmptyCell!11009) )
))
(declare-datatypes ((array!61933 0))(
  ( (array!61934 (arr!29820 (Array (_ BitVec 32) ValueCell!11009)) (size!30300 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61933)

(declare-fun mapDefault!36500 () ValueCell!11009)

