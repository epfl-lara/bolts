; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82706 () Bool)

(assert start!82706)

(declare-fun b_free!18811 () Bool)

(declare-fun b_next!18811 () Bool)

(assert (=> start!82706 (= b_free!18811 (not b_next!18811))))

(declare-fun tp!65553 () Bool)

(declare-fun b_and!30317 () Bool)

(assert (=> start!82706 (= tp!65553 b_and!30317)))

(declare-fun b!963806 () Bool)

(declare-fun res!645183 () Bool)

(declare-fun e!543416 () Bool)

(assert (=> b!963806 (=> (not res!645183) (not e!543416))))

(declare-datatypes ((array!59301 0))(
  ( (array!59302 (arr!28515 (Array (_ BitVec 32) (_ BitVec 64))) (size!28995 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59301)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!963806 (= res!645183 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28995 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28995 _keys!1686))))))

(declare-fun b!963807 () Bool)

(declare-fun e!543418 () Bool)

(declare-fun tp_is_empty!21613 () Bool)

(assert (=> b!963807 (= e!543418 tp_is_empty!21613)))

(declare-fun b!963808 () Bool)

(declare-fun e!543420 () Bool)

(declare-fun e!543417 () Bool)

(declare-fun mapRes!34414 () Bool)

(assert (=> b!963808 (= e!543420 (and e!543417 mapRes!34414))))

(declare-fun condMapEmpty!34414 () Bool)

(declare-datatypes ((V!33801 0))(
  ( (V!33802 (val!10857 Int)) )
))
(declare-datatypes ((ValueCell!10325 0))(
  ( (ValueCellFull!10325 (v!13415 V!33801)) (EmptyCell!10325) )
))
(declare-datatypes ((array!59303 0))(
  ( (array!59304 (arr!28516 (Array (_ BitVec 32) ValueCell!10325)) (size!28996 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59303)

(declare-fun mapDefault!34414 () ValueCell!10325)

