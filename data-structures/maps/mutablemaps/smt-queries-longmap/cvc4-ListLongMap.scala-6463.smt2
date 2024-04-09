; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82650 () Bool)

(assert start!82650)

(declare-fun b_free!18755 () Bool)

(declare-fun b_next!18755 () Bool)

(assert (=> start!82650 (= b_free!18755 (not b_next!18755))))

(declare-fun tp!65385 () Bool)

(declare-fun b_and!30261 () Bool)

(assert (=> start!82650 (= tp!65385 b_and!30261)))

(declare-fun res!644509 () Bool)

(declare-fun e!542997 () Bool)

(assert (=> start!82650 (=> (not res!644509) (not e!542997))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82650 (= res!644509 (validMask!0 mask!2110))))

(assert (=> start!82650 e!542997))

(assert (=> start!82650 true))

(declare-datatypes ((V!33725 0))(
  ( (V!33726 (val!10829 Int)) )
))
(declare-datatypes ((ValueCell!10297 0))(
  ( (ValueCellFull!10297 (v!13387 V!33725)) (EmptyCell!10297) )
))
(declare-datatypes ((array!59191 0))(
  ( (array!59192 (arr!28460 (Array (_ BitVec 32) ValueCell!10297)) (size!28940 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59191)

(declare-fun e!542998 () Bool)

(declare-fun array_inv!21975 (array!59191) Bool)

(assert (=> start!82650 (and (array_inv!21975 _values!1400) e!542998)))

(declare-datatypes ((array!59193 0))(
  ( (array!59194 (arr!28461 (Array (_ BitVec 32) (_ BitVec 64))) (size!28941 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59193)

(declare-fun array_inv!21976 (array!59193) Bool)

(assert (=> start!82650 (array_inv!21976 _keys!1686)))

(assert (=> start!82650 tp!65385))

(declare-fun tp_is_empty!21557 () Bool)

(assert (=> start!82650 tp_is_empty!21557))

(declare-fun b!962880 () Bool)

(declare-fun res!644511 () Bool)

(assert (=> b!962880 (=> (not res!644511) (not e!542997))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!962880 (= res!644511 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28941 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28941 _keys!1686))))))

(declare-fun b!962881 () Bool)

(declare-fun e!542995 () Bool)

(declare-fun mapRes!34330 () Bool)

(assert (=> b!962881 (= e!542998 (and e!542995 mapRes!34330))))

(declare-fun condMapEmpty!34330 () Bool)

(declare-fun mapDefault!34330 () ValueCell!10297)

