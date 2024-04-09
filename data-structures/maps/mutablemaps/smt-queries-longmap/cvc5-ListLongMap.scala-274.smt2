; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4468 () Bool)

(assert start!4468)

(declare-fun b_free!1231 () Bool)

(declare-fun b_next!1231 () Bool)

(assert (=> start!4468 (= b_free!1231 (not b_next!1231))))

(declare-fun tp!5131 () Bool)

(declare-fun b_and!2055 () Bool)

(assert (=> start!4468 (= tp!5131 b_and!2055)))

(declare-fun b!34710 () Bool)

(declare-fun e!21985 () Bool)

(declare-fun tp_is_empty!1585 () Bool)

(assert (=> b!34710 (= e!21985 tp_is_empty!1585)))

(declare-fun mapIsEmpty!1924 () Bool)

(declare-fun mapRes!1924 () Bool)

(assert (=> mapIsEmpty!1924 mapRes!1924))

(declare-fun b!34711 () Bool)

(declare-fun res!21064 () Bool)

(declare-fun e!21983 () Bool)

(assert (=> b!34711 (=> (not res!21064) (not e!21983))))

(declare-datatypes ((array!2375 0))(
  ( (array!2376 (arr!1135 (Array (_ BitVec 32) (_ BitVec 64))) (size!1236 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2375)

(declare-datatypes ((List!920 0))(
  ( (Nil!917) (Cons!916 (h!1483 (_ BitVec 64)) (t!3627 List!920)) )
))
(declare-fun arrayNoDuplicates!0 (array!2375 (_ BitVec 32) List!920) Bool)

(assert (=> b!34711 (= res!21064 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!917))))

(declare-fun res!21063 () Bool)

(assert (=> start!4468 (=> (not res!21063) (not e!21983))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4468 (= res!21063 (validMask!0 mask!2294))))

(assert (=> start!4468 e!21983))

(assert (=> start!4468 true))

(assert (=> start!4468 tp!5131))

(declare-datatypes ((V!1939 0))(
  ( (V!1940 (val!819 Int)) )
))
(declare-datatypes ((ValueCell!593 0))(
  ( (ValueCellFull!593 (v!1914 V!1939)) (EmptyCell!593) )
))
(declare-datatypes ((array!2377 0))(
  ( (array!2378 (arr!1136 (Array (_ BitVec 32) ValueCell!593)) (size!1237 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2377)

(declare-fun e!21986 () Bool)

(declare-fun array_inv!753 (array!2377) Bool)

(assert (=> start!4468 (and (array_inv!753 _values!1501) e!21986)))

(declare-fun array_inv!754 (array!2375) Bool)

(assert (=> start!4468 (array_inv!754 _keys!1833)))

(assert (=> start!4468 tp_is_empty!1585))

(declare-fun b!34712 () Bool)

(assert (=> b!34712 (= e!21983 false)))

(declare-fun k!1304 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!155 0))(
  ( (MissingZero!155 (index!2742 (_ BitVec 32))) (Found!155 (index!2743 (_ BitVec 32))) (Intermediate!155 (undefined!967 Bool) (index!2744 (_ BitVec 32)) (x!6949 (_ BitVec 32))) (Undefined!155) (MissingVacant!155 (index!2745 (_ BitVec 32))) )
))
(declare-fun lt!12814 () SeekEntryResult!155)

(declare-fun seekEntry!0 ((_ BitVec 64) array!2375 (_ BitVec 32)) SeekEntryResult!155)

(assert (=> b!34712 (= lt!12814 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!34713 () Bool)

(declare-fun e!21987 () Bool)

(assert (=> b!34713 (= e!21986 (and e!21987 mapRes!1924))))

(declare-fun condMapEmpty!1924 () Bool)

(declare-fun mapDefault!1924 () ValueCell!593)

