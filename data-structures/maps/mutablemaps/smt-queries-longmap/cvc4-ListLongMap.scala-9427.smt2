; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112210 () Bool)

(assert start!112210)

(declare-fun b_free!30569 () Bool)

(declare-fun b_next!30569 () Bool)

(assert (=> start!112210 (= b_free!30569 (not b_next!30569))))

(declare-fun tp!107344 () Bool)

(declare-fun b_and!49229 () Bool)

(assert (=> start!112210 (= tp!107344 b_and!49229)))

(declare-fun b!1328419 () Bool)

(declare-fun e!757442 () Bool)

(assert (=> b!1328419 (= e!757442 false)))

(declare-datatypes ((V!53741 0))(
  ( (V!53742 (val!18314 Int)) )
))
(declare-datatypes ((ValueCell!17341 0))(
  ( (ValueCellFull!17341 (v!20949 V!53741)) (EmptyCell!17341) )
))
(declare-datatypes ((array!89819 0))(
  ( (array!89820 (arr!43371 (Array (_ BitVec 32) ValueCell!17341)) (size!43922 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89819)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89821 0))(
  ( (array!89822 (arr!43372 (Array (_ BitVec 32) (_ BitVec 64))) (size!43923 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89821)

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun lt!590783 () Bool)

(declare-fun minValue!1262 () V!53741)

(declare-fun zeroValue!1262 () V!53741)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!23724 0))(
  ( (tuple2!23725 (_1!11872 (_ BitVec 64)) (_2!11872 V!53741)) )
))
(declare-datatypes ((List!30911 0))(
  ( (Nil!30908) (Cons!30907 (h!32116 tuple2!23724) (t!44924 List!30911)) )
))
(declare-datatypes ((ListLongMap!21393 0))(
  ( (ListLongMap!21394 (toList!10712 List!30911)) )
))
(declare-fun contains!8812 (ListLongMap!21393 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5644 (array!89821 array!89819 (_ BitVec 32) (_ BitVec 32) V!53741 V!53741 (_ BitVec 32) Int) ListLongMap!21393)

(assert (=> b!1328419 (= lt!590783 (contains!8812 (getCurrentListMap!5644 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun res!881482 () Bool)

(assert (=> start!112210 (=> (not res!881482) (not e!757442))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112210 (= res!881482 (validMask!0 mask!1998))))

(assert (=> start!112210 e!757442))

(declare-fun e!757444 () Bool)

(declare-fun array_inv!32679 (array!89819) Bool)

(assert (=> start!112210 (and (array_inv!32679 _values!1320) e!757444)))

(assert (=> start!112210 true))

(declare-fun array_inv!32680 (array!89821) Bool)

(assert (=> start!112210 (array_inv!32680 _keys!1590)))

(assert (=> start!112210 tp!107344))

(declare-fun tp_is_empty!36479 () Bool)

(assert (=> start!112210 tp_is_empty!36479))

(declare-fun b!1328420 () Bool)

(declare-fun res!881481 () Bool)

(assert (=> b!1328420 (=> (not res!881481) (not e!757442))))

(declare-datatypes ((List!30912 0))(
  ( (Nil!30909) (Cons!30908 (h!32117 (_ BitVec 64)) (t!44925 List!30912)) )
))
(declare-fun arrayNoDuplicates!0 (array!89821 (_ BitVec 32) List!30912) Bool)

(assert (=> b!1328420 (= res!881481 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30909))))

(declare-fun b!1328421 () Bool)

(declare-fun e!757441 () Bool)

(declare-fun mapRes!56392 () Bool)

(assert (=> b!1328421 (= e!757444 (and e!757441 mapRes!56392))))

(declare-fun condMapEmpty!56392 () Bool)

(declare-fun mapDefault!56392 () ValueCell!17341)

