; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82772 () Bool)

(assert start!82772)

(declare-fun b_free!18877 () Bool)

(declare-fun b_next!18877 () Bool)

(assert (=> start!82772 (= b_free!18877 (not b_next!18877))))

(declare-fun tp!65751 () Bool)

(declare-fun b_and!30383 () Bool)

(assert (=> start!82772 (= tp!65751 b_and!30383)))

(declare-fun mapNonEmpty!34513 () Bool)

(declare-fun mapRes!34513 () Bool)

(declare-fun tp!65752 () Bool)

(declare-fun e!543992 () Bool)

(assert (=> mapNonEmpty!34513 (= mapRes!34513 (and tp!65752 e!543992))))

(declare-datatypes ((V!33889 0))(
  ( (V!33890 (val!10890 Int)) )
))
(declare-datatypes ((ValueCell!10358 0))(
  ( (ValueCellFull!10358 (v!13448 V!33889)) (EmptyCell!10358) )
))
(declare-datatypes ((array!59427 0))(
  ( (array!59428 (arr!28578 (Array (_ BitVec 32) ValueCell!10358)) (size!29058 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59427)

(declare-fun mapRest!34513 () (Array (_ BitVec 32) ValueCell!10358))

(declare-fun mapKey!34513 () (_ BitVec 32))

(declare-fun mapValue!34513 () ValueCell!10358)

(assert (=> mapNonEmpty!34513 (= (arr!28578 _values!1400) (store mapRest!34513 mapKey!34513 mapValue!34513))))

(declare-fun b!964934 () Bool)

(declare-fun e!543994 () Bool)

(declare-fun e!543990 () Bool)

(assert (=> b!964934 (= e!543994 (and e!543990 mapRes!34513))))

(declare-fun condMapEmpty!34513 () Bool)

(declare-fun mapDefault!34513 () ValueCell!10358)

