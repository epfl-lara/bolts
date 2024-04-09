; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4060 () Bool)

(assert start!4060)

(declare-fun b_free!967 () Bool)

(declare-fun b_next!967 () Bool)

(assert (=> start!4060 (= b_free!967 (not b_next!967))))

(declare-fun tp!4320 () Bool)

(declare-fun b_and!1779 () Bool)

(assert (=> start!4060 (= tp!4320 b_and!1779)))

(declare-fun b!29924 () Bool)

(declare-fun res!17962 () Bool)

(declare-fun e!19280 () Bool)

(assert (=> b!29924 (=> (not res!17962) (not e!19280))))

(declare-datatypes ((array!1863 0))(
  ( (array!1864 (arr!885 (Array (_ BitVec 32) (_ BitVec 64))) (size!986 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1863)

(declare-datatypes ((List!729 0))(
  ( (Nil!726) (Cons!725 (h!1292 (_ BitVec 64)) (t!3424 List!729)) )
))
(declare-fun arrayNoDuplicates!0 (array!1863 (_ BitVec 32) List!729) Bool)

(assert (=> b!29924 (= res!17962 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!726))))

(declare-fun b!29925 () Bool)

(declare-fun e!19279 () Bool)

(declare-fun e!19278 () Bool)

(declare-fun mapRes!1510 () Bool)

(assert (=> b!29925 (= e!19279 (and e!19278 mapRes!1510))))

(declare-fun condMapEmpty!1510 () Bool)

(declare-datatypes ((V!1587 0))(
  ( (V!1588 (val!687 Int)) )
))
(declare-datatypes ((ValueCell!461 0))(
  ( (ValueCellFull!461 (v!1776 V!1587)) (EmptyCell!461) )
))
(declare-datatypes ((array!1865 0))(
  ( (array!1866 (arr!886 (Array (_ BitVec 32) ValueCell!461)) (size!987 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1865)

(declare-fun mapDefault!1510 () ValueCell!461)

