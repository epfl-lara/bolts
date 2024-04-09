; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82692 () Bool)

(assert start!82692)

(declare-fun b_free!18797 () Bool)

(declare-fun b_next!18797 () Bool)

(assert (=> start!82692 (= b_free!18797 (not b_next!18797))))

(declare-fun tp!65511 () Bool)

(declare-fun b_and!30303 () Bool)

(assert (=> start!82692 (= tp!65511 b_and!30303)))

(declare-fun b!963573 () Bool)

(declare-fun e!543309 () Bool)

(declare-fun tp_is_empty!21599 () Bool)

(assert (=> b!963573 (= e!543309 tp_is_empty!21599)))

(declare-fun b!963574 () Bool)

(declare-fun res!645018 () Bool)

(declare-fun e!543313 () Bool)

(assert (=> b!963574 (=> (not res!645018) (not e!543313))))

(declare-datatypes ((array!59273 0))(
  ( (array!59274 (arr!28501 (Array (_ BitVec 32) (_ BitVec 64))) (size!28981 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59273)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!963574 (= res!645018 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28981 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28981 _keys!1686))))))

(declare-fun b!963575 () Bool)

(declare-fun res!645016 () Bool)

(assert (=> b!963575 (=> (not res!645016) (not e!543313))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33781 0))(
  ( (V!33782 (val!10850 Int)) )
))
(declare-datatypes ((ValueCell!10318 0))(
  ( (ValueCellFull!10318 (v!13408 V!33781)) (EmptyCell!10318) )
))
(declare-datatypes ((array!59275 0))(
  ( (array!59276 (arr!28502 (Array (_ BitVec 32) ValueCell!10318)) (size!28982 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59275)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!963575 (= res!645016 (and (= (size!28982 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28981 _keys!1686) (size!28982 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun res!645020 () Bool)

(assert (=> start!82692 (=> (not res!645020) (not e!543313))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82692 (= res!645020 (validMask!0 mask!2110))))

(assert (=> start!82692 e!543313))

(assert (=> start!82692 true))

(declare-fun e!543312 () Bool)

(declare-fun array_inv!21997 (array!59275) Bool)

(assert (=> start!82692 (and (array_inv!21997 _values!1400) e!543312)))

(declare-fun array_inv!21998 (array!59273) Bool)

(assert (=> start!82692 (array_inv!21998 _keys!1686)))

(assert (=> start!82692 tp!65511))

(assert (=> start!82692 tp_is_empty!21599))

(declare-fun b!963576 () Bool)

(declare-fun e!543311 () Bool)

(declare-fun mapRes!34393 () Bool)

(assert (=> b!963576 (= e!543312 (and e!543311 mapRes!34393))))

(declare-fun condMapEmpty!34393 () Bool)

(declare-fun mapDefault!34393 () ValueCell!10318)

