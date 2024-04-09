; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82674 () Bool)

(assert start!82674)

(declare-fun b_free!18779 () Bool)

(declare-fun b_next!18779 () Bool)

(assert (=> start!82674 (= b_free!18779 (not b_next!18779))))

(declare-fun tp!65457 () Bool)

(declare-fun b_and!30285 () Bool)

(assert (=> start!82674 (= tp!65457 b_and!30285)))

(declare-fun b!963276 () Bool)

(declare-fun e!543174 () Bool)

(declare-fun tp_is_empty!21581 () Bool)

(assert (=> b!963276 (= e!543174 tp_is_empty!21581)))

(declare-fun b!963277 () Bool)

(declare-fun res!644802 () Bool)

(declare-fun e!543176 () Bool)

(assert (=> b!963277 (=> (not res!644802) (not e!543176))))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!963277 (= res!644802 (bvsgt from!2084 newFrom!159))))

(declare-fun b!963278 () Bool)

(declare-fun res!644801 () Bool)

(assert (=> b!963278 (=> (not res!644801) (not e!543176))))

(declare-datatypes ((array!59239 0))(
  ( (array!59240 (arr!28484 (Array (_ BitVec 32) (_ BitVec 64))) (size!28964 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59239)

(declare-datatypes ((List!19892 0))(
  ( (Nil!19889) (Cons!19888 (h!21050 (_ BitVec 64)) (t!28263 List!19892)) )
))
(declare-fun arrayNoDuplicates!0 (array!59239 (_ BitVec 32) List!19892) Bool)

(assert (=> b!963278 (= res!644801 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19889))))

(declare-fun b!963279 () Bool)

(declare-fun e!543175 () Bool)

(declare-fun e!543178 () Bool)

(declare-fun mapRes!34366 () Bool)

(assert (=> b!963279 (= e!543175 (and e!543178 mapRes!34366))))

(declare-fun condMapEmpty!34366 () Bool)

(declare-datatypes ((V!33757 0))(
  ( (V!33758 (val!10841 Int)) )
))
(declare-datatypes ((ValueCell!10309 0))(
  ( (ValueCellFull!10309 (v!13399 V!33757)) (EmptyCell!10309) )
))
(declare-datatypes ((array!59241 0))(
  ( (array!59242 (arr!28485 (Array (_ BitVec 32) ValueCell!10309)) (size!28965 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59241)

(declare-fun mapDefault!34366 () ValueCell!10309)

