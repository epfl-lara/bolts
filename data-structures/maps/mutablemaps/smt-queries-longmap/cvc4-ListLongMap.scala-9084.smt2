; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109328 () Bool)

(assert start!109328)

(declare-fun b_free!28781 () Bool)

(declare-fun b_next!28781 () Bool)

(assert (=> start!109328 (= b_free!28781 (not b_next!28781))))

(declare-fun tp!101462 () Bool)

(declare-fun b_and!46881 () Bool)

(assert (=> start!109328 (= tp!101462 b_and!46881)))

(declare-fun b!1293162 () Bool)

(declare-fun res!859386 () Bool)

(declare-fun e!738059 () Bool)

(assert (=> b!1293162 (=> (not res!859386) (not e!738059))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85831 0))(
  ( (array!85832 (arr!41412 (Array (_ BitVec 32) (_ BitVec 64))) (size!41963 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85831)

(assert (=> b!1293162 (= res!859386 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41963 _keys!1741))))))

(declare-fun b!1293163 () Bool)

(declare-fun res!859384 () Bool)

(assert (=> b!1293163 (=> (not res!859384) (not e!738059))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85831 (_ BitVec 32)) Bool)

(assert (=> b!1293163 (= res!859384 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1293164 () Bool)

(declare-fun e!738064 () Bool)

(declare-fun e!738061 () Bool)

(declare-fun mapRes!53192 () Bool)

(assert (=> b!1293164 (= e!738064 (and e!738061 mapRes!53192))))

(declare-fun condMapEmpty!53192 () Bool)

(declare-datatypes ((V!50997 0))(
  ( (V!50998 (val!17285 Int)) )
))
(declare-datatypes ((ValueCell!16312 0))(
  ( (ValueCellFull!16312 (v!19886 V!50997)) (EmptyCell!16312) )
))
(declare-datatypes ((array!85833 0))(
  ( (array!85834 (arr!41413 (Array (_ BitVec 32) ValueCell!16312)) (size!41964 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85833)

(declare-fun mapDefault!53192 () ValueCell!16312)

