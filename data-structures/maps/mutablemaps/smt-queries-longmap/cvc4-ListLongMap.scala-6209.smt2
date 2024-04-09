; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79420 () Bool)

(assert start!79420)

(declare-fun b_free!17579 () Bool)

(declare-fun b_next!17579 () Bool)

(assert (=> start!79420 (= b_free!17579 (not b_next!17579))))

(declare-fun tp!61181 () Bool)

(declare-fun b_and!28735 () Bool)

(assert (=> start!79420 (= tp!61181 b_and!28735)))

(declare-fun b!932705 () Bool)

(declare-fun e!523792 () Bool)

(declare-fun tp_is_empty!20087 () Bool)

(assert (=> b!932705 (= e!523792 tp_is_empty!20087)))

(declare-fun b!932706 () Bool)

(declare-fun res!628305 () Bool)

(declare-fun e!523796 () Bool)

(assert (=> b!932706 (=> (not res!628305) (not e!523796))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!932706 (= res!628305 (validKeyInArray!0 k!1099))))

(declare-fun b!932707 () Bool)

(declare-fun e!523795 () Bool)

(declare-fun e!523794 () Bool)

(declare-fun mapRes!31890 () Bool)

(assert (=> b!932707 (= e!523795 (and e!523794 mapRes!31890))))

(declare-fun condMapEmpty!31890 () Bool)

(declare-datatypes ((V!31747 0))(
  ( (V!31748 (val!10094 Int)) )
))
(declare-datatypes ((ValueCell!9562 0))(
  ( (ValueCellFull!9562 (v!12613 V!31747)) (EmptyCell!9562) )
))
(declare-datatypes ((array!56136 0))(
  ( (array!56137 (arr!27008 (Array (_ BitVec 32) ValueCell!9562)) (size!27468 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56136)

(declare-fun mapDefault!31890 () ValueCell!9562)

