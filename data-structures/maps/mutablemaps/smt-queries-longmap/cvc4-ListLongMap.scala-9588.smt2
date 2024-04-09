; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113430 () Bool)

(assert start!113430)

(declare-fun b_free!31445 () Bool)

(declare-fun b_next!31445 () Bool)

(assert (=> start!113430 (= b_free!31445 (not b_next!31445))))

(declare-fun tp!110141 () Bool)

(declare-fun b_and!50743 () Bool)

(assert (=> start!113430 (= tp!110141 b_and!50743)))

(declare-fun b!1345981 () Bool)

(declare-fun e!765871 () Bool)

(declare-fun e!765872 () Bool)

(declare-fun mapRes!57874 () Bool)

(assert (=> b!1345981 (= e!765871 (and e!765872 mapRes!57874))))

(declare-fun condMapEmpty!57874 () Bool)

(declare-datatypes ((V!55029 0))(
  ( (V!55030 (val!18797 Int)) )
))
(declare-datatypes ((ValueCell!17824 0))(
  ( (ValueCellFull!17824 (v!21443 V!55029)) (EmptyCell!17824) )
))
(declare-datatypes ((array!91687 0))(
  ( (array!91688 (arr!44295 (Array (_ BitVec 32) ValueCell!17824)) (size!44846 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91687)

(declare-fun mapDefault!57874 () ValueCell!17824)

