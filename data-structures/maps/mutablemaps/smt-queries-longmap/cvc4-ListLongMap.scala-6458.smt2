; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82620 () Bool)

(assert start!82620)

(declare-fun b_free!18725 () Bool)

(declare-fun b_next!18725 () Bool)

(assert (=> start!82620 (= b_free!18725 (not b_next!18725))))

(declare-fun tp!65296 () Bool)

(declare-fun b_and!30231 () Bool)

(assert (=> start!82620 (= tp!65296 b_and!30231)))

(declare-fun b!962423 () Bool)

(declare-fun res!644191 () Bool)

(declare-fun e!542769 () Bool)

(assert (=> b!962423 (=> (not res!644191) (not e!542769))))

(declare-datatypes ((array!59133 0))(
  ( (array!59134 (arr!28431 (Array (_ BitVec 32) (_ BitVec 64))) (size!28911 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59133)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(assert (=> b!962423 (= res!644191 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28911 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28911 _keys!1686))))))

(declare-fun b!962424 () Bool)

(declare-fun e!542770 () Bool)

(declare-fun tp_is_empty!21527 () Bool)

(assert (=> b!962424 (= e!542770 tp_is_empty!21527)))

(declare-fun b!962425 () Bool)

(declare-fun e!542771 () Bool)

(declare-fun e!542773 () Bool)

(declare-fun mapRes!34285 () Bool)

(assert (=> b!962425 (= e!542771 (and e!542773 mapRes!34285))))

(declare-fun condMapEmpty!34285 () Bool)

(declare-datatypes ((V!33685 0))(
  ( (V!33686 (val!10814 Int)) )
))
(declare-datatypes ((ValueCell!10282 0))(
  ( (ValueCellFull!10282 (v!13372 V!33685)) (EmptyCell!10282) )
))
(declare-datatypes ((array!59135 0))(
  ( (array!59136 (arr!28432 (Array (_ BitVec 32) ValueCell!10282)) (size!28912 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59135)

(declare-fun mapDefault!34285 () ValueCell!10282)

