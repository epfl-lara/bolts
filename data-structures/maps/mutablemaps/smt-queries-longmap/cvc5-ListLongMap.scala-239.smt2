; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4114 () Bool)

(assert start!4114)

(declare-fun b_free!1021 () Bool)

(declare-fun b_next!1021 () Bool)

(assert (=> start!4114 (= b_free!1021 (not b_next!1021))))

(declare-fun tp!4483 () Bool)

(declare-fun b_and!1833 () Bool)

(assert (=> start!4114 (= tp!4483 b_and!1833)))

(declare-fun mapNonEmpty!1591 () Bool)

(declare-fun mapRes!1591 () Bool)

(declare-fun tp!4482 () Bool)

(declare-fun e!19691 () Bool)

(assert (=> mapNonEmpty!1591 (= mapRes!1591 (and tp!4482 e!19691))))

(declare-datatypes ((V!1659 0))(
  ( (V!1660 (val!714 Int)) )
))
(declare-datatypes ((ValueCell!488 0))(
  ( (ValueCellFull!488 (v!1803 V!1659)) (EmptyCell!488) )
))
(declare-datatypes ((array!1963 0))(
  ( (array!1964 (arr!935 (Array (_ BitVec 32) ValueCell!488)) (size!1036 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1963)

(declare-fun mapValue!1591 () ValueCell!488)

(declare-fun mapRest!1591 () (Array (_ BitVec 32) ValueCell!488))

(declare-fun mapKey!1591 () (_ BitVec 32))

(assert (=> mapNonEmpty!1591 (= (arr!935 _values!1501) (store mapRest!1591 mapKey!1591 mapValue!1591))))

(declare-fun b!30736 () Bool)

(declare-fun e!19688 () Bool)

(assert (=> b!30736 (= e!19688 (not true))))

(declare-datatypes ((tuple2!1162 0))(
  ( (tuple2!1163 (_1!591 (_ BitVec 64)) (_2!591 V!1659)) )
))
(declare-datatypes ((List!766 0))(
  ( (Nil!763) (Cons!762 (h!1329 tuple2!1162) (t!3461 List!766)) )
))
(declare-datatypes ((ListLongMap!743 0))(
  ( (ListLongMap!744 (toList!387 List!766)) )
))
(declare-fun lt!11462 () ListLongMap!743)

(declare-datatypes ((array!1965 0))(
  ( (array!1966 (arr!936 (Array (_ BitVec 32) (_ BitVec 64))) (size!1037 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1965)

(declare-datatypes ((SeekEntryResult!115 0))(
  ( (MissingZero!115 (index!2582 (_ BitVec 32))) (Found!115 (index!2583 (_ BitVec 32))) (Intermediate!115 (undefined!927 Bool) (index!2584 (_ BitVec 32)) (x!6569 (_ BitVec 32))) (Undefined!115) (MissingVacant!115 (index!2585 (_ BitVec 32))) )
))
(declare-fun lt!11463 () SeekEntryResult!115)

(declare-fun contains!324 (ListLongMap!743 (_ BitVec 64)) Bool)

(assert (=> b!30736 (contains!324 lt!11462 (select (arr!936 _keys!1833) (index!2583 lt!11463)))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1659)

(declare-fun minValue!1443 () V!1659)

(declare-datatypes ((Unit!693 0))(
  ( (Unit!694) )
))
(declare-fun lt!11461 () Unit!693)

(declare-fun lemmaValidKeyInArrayIsInListMap!38 (array!1965 array!1963 (_ BitVec 32) (_ BitVec 32) V!1659 V!1659 (_ BitVec 32) Int) Unit!693)

(assert (=> b!30736 (= lt!11461 (lemmaValidKeyInArrayIsInListMap!38 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 (index!2583 lt!11463) defaultEntry!1504))))

(declare-fun b!30737 () Bool)

(declare-fun e!19687 () Bool)

(declare-fun e!19693 () Bool)

(assert (=> b!30737 (= e!19687 (and e!19693 mapRes!1591))))

(declare-fun condMapEmpty!1591 () Bool)

(declare-fun mapDefault!1591 () ValueCell!488)

