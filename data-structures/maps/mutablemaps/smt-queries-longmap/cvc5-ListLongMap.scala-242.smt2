; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4132 () Bool)

(assert start!4132)

(declare-fun b_free!1039 () Bool)

(declare-fun b_next!1039 () Bool)

(assert (=> start!4132 (= b_free!1039 (not b_next!1039))))

(declare-fun tp!4537 () Bool)

(declare-fun b_and!1851 () Bool)

(assert (=> start!4132 (= tp!4537 b_and!1851)))

(declare-fun b!31031 () Bool)

(declare-fun e!19872 () Bool)

(declare-fun e!19873 () Bool)

(declare-fun mapRes!1618 () Bool)

(assert (=> b!31031 (= e!19872 (and e!19873 mapRes!1618))))

(declare-fun condMapEmpty!1618 () Bool)

(declare-datatypes ((V!1683 0))(
  ( (V!1684 (val!723 Int)) )
))
(declare-datatypes ((ValueCell!497 0))(
  ( (ValueCellFull!497 (v!1812 V!1683)) (EmptyCell!497) )
))
(declare-datatypes ((array!1995 0))(
  ( (array!1996 (arr!951 (Array (_ BitVec 32) ValueCell!497)) (size!1052 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1995)

(declare-fun mapDefault!1618 () ValueCell!497)

