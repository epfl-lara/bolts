; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84242 () Bool)

(assert start!84242)

(declare-fun b_free!19915 () Bool)

(declare-fun b_next!19915 () Bool)

(assert (=> start!84242 (= b_free!19915 (not b_next!19915))))

(declare-fun tp!69349 () Bool)

(declare-fun b_and!31925 () Bool)

(assert (=> start!84242 (= tp!69349 b_and!31925)))

(declare-fun b!984902 () Bool)

(declare-fun res!659166 () Bool)

(declare-fun e!555229 () Bool)

(assert (=> b!984902 (=> (not res!659166) (not e!555229))))

(declare-datatypes ((array!62001 0))(
  ( (array!62002 (arr!29854 (Array (_ BitVec 32) (_ BitVec 64))) (size!30334 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62001)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62001 (_ BitVec 32)) Bool)

(assert (=> b!984902 (= res!659166 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!984903 () Bool)

(declare-fun res!659172 () Bool)

(assert (=> b!984903 (=> (not res!659172) (not e!555229))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!984903 (= res!659172 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30334 _keys!1544))))))

(declare-fun b!984904 () Bool)

(declare-fun res!659168 () Bool)

(assert (=> b!984904 (=> (not res!659168) (not e!555229))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!984904 (= res!659168 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!984905 () Bool)

(declare-fun res!659171 () Bool)

(assert (=> b!984905 (=> (not res!659171) (not e!555229))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!984905 (= res!659171 (validKeyInArray!0 (select (arr!29854 _keys!1544) from!1932)))))

(declare-fun mapIsEmpty!36554 () Bool)

(declare-fun mapRes!36554 () Bool)

(assert (=> mapIsEmpty!36554 mapRes!36554))

(declare-fun b!984906 () Bool)

(declare-fun e!555227 () Bool)

(declare-fun e!555228 () Bool)

(assert (=> b!984906 (= e!555227 (and e!555228 mapRes!36554))))

(declare-fun condMapEmpty!36554 () Bool)

(declare-datatypes ((V!35673 0))(
  ( (V!35674 (val!11559 Int)) )
))
(declare-datatypes ((ValueCell!11027 0))(
  ( (ValueCellFull!11027 (v!14121 V!35673)) (EmptyCell!11027) )
))
(declare-datatypes ((array!62003 0))(
  ( (array!62004 (arr!29855 (Array (_ BitVec 32) ValueCell!11027)) (size!30335 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62003)

(declare-fun mapDefault!36554 () ValueCell!11027)

