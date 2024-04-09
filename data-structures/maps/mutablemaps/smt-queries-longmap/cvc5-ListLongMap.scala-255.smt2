; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4210 () Bool)

(assert start!4210)

(declare-fun b_free!1117 () Bool)

(declare-fun b_next!1117 () Bool)

(assert (=> start!4210 (= b_free!1117 (not b_next!1117))))

(declare-fun tp!4771 () Bool)

(declare-fun b_and!1929 () Bool)

(assert (=> start!4210 (= tp!4771 b_and!1929)))

(declare-fun b!32156 () Bool)

(declare-fun e!20459 () Bool)

(declare-fun e!20461 () Bool)

(declare-fun mapRes!1735 () Bool)

(assert (=> b!32156 (= e!20459 (and e!20461 mapRes!1735))))

(declare-fun condMapEmpty!1735 () Bool)

(declare-datatypes ((V!1787 0))(
  ( (V!1788 (val!762 Int)) )
))
(declare-datatypes ((ValueCell!536 0))(
  ( (ValueCellFull!536 (v!1851 V!1787)) (EmptyCell!536) )
))
(declare-datatypes ((array!2149 0))(
  ( (array!2150 (arr!1028 (Array (_ BitVec 32) ValueCell!536)) (size!1129 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2149)

(declare-fun mapDefault!1735 () ValueCell!536)

