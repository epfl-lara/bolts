; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79310 () Bool)

(assert start!79310)

(declare-fun b_free!17495 () Bool)

(declare-fun b_next!17495 () Bool)

(assert (=> start!79310 (= b_free!17495 (not b_next!17495))))

(declare-fun tp!60926 () Bool)

(declare-fun b_and!28579 () Bool)

(assert (=> start!79310 (= tp!60926 b_and!28579)))

(declare-fun b!930909 () Bool)

(declare-fun res!627044 () Bool)

(declare-fun e!522828 () Bool)

(assert (=> b!930909 (=> (not res!627044) (not e!522828))))

(declare-datatypes ((array!55974 0))(
  ( (array!55975 (arr!26928 (Array (_ BitVec 32) (_ BitVec 64))) (size!27388 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55974)

(declare-datatypes ((List!19082 0))(
  ( (Nil!19079) (Cons!19078 (h!20224 (_ BitVec 64)) (t!27147 List!19082)) )
))
(declare-fun arrayNoDuplicates!0 (array!55974 (_ BitVec 32) List!19082) Bool)

(assert (=> b!930909 (= res!627044 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19079))))

(declare-fun b!930910 () Bool)

(declare-fun e!522830 () Bool)

(declare-fun e!522831 () Bool)

(declare-fun mapRes!31761 () Bool)

(assert (=> b!930910 (= e!522830 (and e!522831 mapRes!31761))))

(declare-fun condMapEmpty!31761 () Bool)

(declare-datatypes ((V!31635 0))(
  ( (V!31636 (val!10052 Int)) )
))
(declare-datatypes ((ValueCell!9520 0))(
  ( (ValueCellFull!9520 (v!12570 V!31635)) (EmptyCell!9520) )
))
(declare-datatypes ((array!55976 0))(
  ( (array!55977 (arr!26929 (Array (_ BitVec 32) ValueCell!9520)) (size!27389 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55976)

(declare-fun mapDefault!31761 () ValueCell!9520)

