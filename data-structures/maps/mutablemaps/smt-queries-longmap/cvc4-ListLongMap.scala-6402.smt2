; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82240 () Bool)

(assert start!82240)

(declare-fun b_free!18485 () Bool)

(declare-fun b_next!18485 () Bool)

(assert (=> start!82240 (= b_free!18485 (not b_next!18485))))

(declare-fun tp!64417 () Bool)

(declare-fun b_and!29991 () Bool)

(assert (=> start!82240 (= tp!64417 b_and!29991)))

(declare-fun b!958076 () Bool)

(declare-fun e!540154 () Bool)

(declare-fun tp_is_empty!21191 () Bool)

(assert (=> b!958076 (= e!540154 tp_is_empty!21191)))

(declare-fun mapIsEmpty!33766 () Bool)

(declare-fun mapRes!33766 () Bool)

(assert (=> mapIsEmpty!33766 mapRes!33766))

(declare-fun b!958077 () Bool)

(declare-fun res!641420 () Bool)

(declare-fun e!540158 () Bool)

(assert (=> b!958077 (=> (not res!641420) (not e!540158))))

(declare-datatypes ((array!58499 0))(
  ( (array!58500 (arr!28119 (Array (_ BitVec 32) (_ BitVec 64))) (size!28599 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58499)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!958077 (= res!641420 (validKeyInArray!0 (select (arr!28119 _keys!1668) i!793)))))

(declare-fun b!958078 () Bool)

(declare-fun res!641418 () Bool)

(assert (=> b!958078 (=> (not res!641418) (not e!540158))))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!958078 (= res!641418 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28599 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28599 _keys!1668))))))

(declare-fun b!958079 () Bool)

(declare-fun e!540155 () Bool)

(assert (=> b!958079 (= e!540155 (and e!540154 mapRes!33766))))

(declare-fun condMapEmpty!33766 () Bool)

(declare-datatypes ((V!33237 0))(
  ( (V!33238 (val!10646 Int)) )
))
(declare-datatypes ((ValueCell!10114 0))(
  ( (ValueCellFull!10114 (v!13203 V!33237)) (EmptyCell!10114) )
))
(declare-datatypes ((array!58501 0))(
  ( (array!58502 (arr!28120 (Array (_ BitVec 32) ValueCell!10114)) (size!28600 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58501)

(declare-fun mapDefault!33766 () ValueCell!10114)

