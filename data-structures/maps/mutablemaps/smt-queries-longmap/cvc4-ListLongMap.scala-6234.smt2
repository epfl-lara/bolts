; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79708 () Bool)

(assert start!79708)

(declare-fun b_free!17729 () Bool)

(declare-fun b_next!17729 () Bool)

(assert (=> start!79708 (= b_free!17729 (not b_next!17729))))

(declare-fun tp!61644 () Bool)

(declare-fun b_and!29067 () Bool)

(assert (=> start!79708 (= tp!61644 b_and!29067)))

(declare-fun b!937038 () Bool)

(declare-fun res!630864 () Bool)

(declare-fun e!526209 () Bool)

(assert (=> b!937038 (=> (not res!630864) (not e!526209))))

(declare-datatypes ((array!56438 0))(
  ( (array!56439 (arr!27155 (Array (_ BitVec 32) (_ BitVec 64))) (size!27615 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56438)

(declare-datatypes ((List!19271 0))(
  ( (Nil!19268) (Cons!19267 (h!20413 (_ BitVec 64)) (t!27552 List!19271)) )
))
(declare-fun arrayNoDuplicates!0 (array!56438 (_ BitVec 32) List!19271) Bool)

(assert (=> b!937038 (= res!630864 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19268))))

(declare-fun b!937039 () Bool)

(declare-datatypes ((Unit!31637 0))(
  ( (Unit!31638) )
))
(declare-fun e!526205 () Unit!31637)

(declare-fun e!526208 () Unit!31637)

(assert (=> b!937039 (= e!526205 e!526208)))

(declare-fun lt!422755 () (_ BitVec 64))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!937039 (= lt!422755 (select (arr!27155 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!97450 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!937039 (= c!97450 (validKeyInArray!0 lt!422755))))

(declare-fun b!937040 () Bool)

(declare-fun Unit!31639 () Unit!31637)

(assert (=> b!937040 (= e!526205 Unit!31639)))

(declare-fun b!937041 () Bool)

(declare-fun Unit!31640 () Unit!31637)

(assert (=> b!937041 (= e!526208 Unit!31640)))

(declare-fun b!937042 () Bool)

(declare-fun e!526213 () Bool)

(declare-fun e!526214 () Bool)

(declare-fun mapRes!32127 () Bool)

(assert (=> b!937042 (= e!526213 (and e!526214 mapRes!32127))))

(declare-fun condMapEmpty!32127 () Bool)

(declare-datatypes ((V!31947 0))(
  ( (V!31948 (val!10169 Int)) )
))
(declare-datatypes ((ValueCell!9637 0))(
  ( (ValueCellFull!9637 (v!12694 V!31947)) (EmptyCell!9637) )
))
(declare-datatypes ((array!56440 0))(
  ( (array!56441 (arr!27156 (Array (_ BitVec 32) ValueCell!9637)) (size!27616 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56440)

(declare-fun mapDefault!32127 () ValueCell!9637)

