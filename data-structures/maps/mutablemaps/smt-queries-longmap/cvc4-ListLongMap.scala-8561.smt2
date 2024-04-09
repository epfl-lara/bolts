; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104570 () Bool)

(assert start!104570)

(declare-fun b!1246903 () Bool)

(declare-fun e!707299 () Bool)

(declare-fun tp_is_empty!31307 () Bool)

(assert (=> b!1246903 (= e!707299 tp_is_empty!31307)))

(declare-fun mapIsEmpty!48700 () Bool)

(declare-fun mapRes!48700 () Bool)

(assert (=> mapIsEmpty!48700 mapRes!48700))

(declare-fun b!1246904 () Bool)

(declare-fun e!707300 () Bool)

(declare-fun e!707301 () Bool)

(assert (=> b!1246904 (= e!707300 (and e!707301 mapRes!48700))))

(declare-fun condMapEmpty!48700 () Bool)

(declare-datatypes ((V!47107 0))(
  ( (V!47108 (val!15716 Int)) )
))
(declare-datatypes ((ValueCell!14890 0))(
  ( (ValueCellFull!14890 (v!18411 V!47107)) (EmptyCell!14890) )
))
(declare-datatypes ((array!80287 0))(
  ( (array!80288 (arr!38713 (Array (_ BitVec 32) ValueCell!14890)) (size!39250 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80287)

(declare-fun mapDefault!48700 () ValueCell!14890)

