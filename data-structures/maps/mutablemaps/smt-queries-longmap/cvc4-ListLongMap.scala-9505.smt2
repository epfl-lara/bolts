; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112762 () Bool)

(assert start!112762)

(declare-fun b_free!31037 () Bool)

(declare-fun b_next!31037 () Bool)

(assert (=> start!112762 (= b_free!31037 (not b_next!31037))))

(declare-fun tp!108756 () Bool)

(declare-fun b_and!50025 () Bool)

(assert (=> start!112762 (= tp!108756 b_and!50025)))

(declare-fun b!1337067 () Bool)

(declare-fun e!761395 () Bool)

(declare-fun e!761396 () Bool)

(declare-fun mapRes!57101 () Bool)

(assert (=> b!1337067 (= e!761395 (and e!761396 mapRes!57101))))

(declare-fun condMapEmpty!57101 () Bool)

(declare-datatypes ((V!54365 0))(
  ( (V!54366 (val!18548 Int)) )
))
(declare-datatypes ((ValueCell!17575 0))(
  ( (ValueCellFull!17575 (v!21187 V!54365)) (EmptyCell!17575) )
))
(declare-datatypes ((array!90727 0))(
  ( (array!90728 (arr!43823 (Array (_ BitVec 32) ValueCell!17575)) (size!44374 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90727)

(declare-fun mapDefault!57101 () ValueCell!17575)

