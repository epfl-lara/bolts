; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82668 () Bool)

(assert start!82668)

(declare-fun b_free!18773 () Bool)

(declare-fun b_next!18773 () Bool)

(assert (=> start!82668 (= b_free!18773 (not b_next!18773))))

(declare-fun tp!65440 () Bool)

(declare-fun b_and!30279 () Bool)

(assert (=> start!82668 (= tp!65440 b_and!30279)))

(declare-fun mapNonEmpty!34357 () Bool)

(declare-fun mapRes!34357 () Bool)

(declare-fun tp!65439 () Bool)

(declare-fun e!543133 () Bool)

(assert (=> mapNonEmpty!34357 (= mapRes!34357 (and tp!65439 e!543133))))

(declare-datatypes ((V!33749 0))(
  ( (V!33750 (val!10838 Int)) )
))
(declare-datatypes ((ValueCell!10306 0))(
  ( (ValueCellFull!10306 (v!13396 V!33749)) (EmptyCell!10306) )
))
(declare-fun mapValue!34357 () ValueCell!10306)

(declare-fun mapKey!34357 () (_ BitVec 32))

(declare-datatypes ((array!59227 0))(
  ( (array!59228 (arr!28478 (Array (_ BitVec 32) ValueCell!10306)) (size!28958 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59227)

(declare-fun mapRest!34357 () (Array (_ BitVec 32) ValueCell!10306))

(assert (=> mapNonEmpty!34357 (= (arr!28478 _values!1400) (store mapRest!34357 mapKey!34357 mapValue!34357))))

(declare-fun mapIsEmpty!34357 () Bool)

(assert (=> mapIsEmpty!34357 mapRes!34357))

(declare-fun b!963177 () Bool)

(declare-fun res!644729 () Bool)

(declare-fun e!543130 () Bool)

(assert (=> b!963177 (=> (not res!644729) (not e!543130))))

(declare-datatypes ((array!59229 0))(
  ( (array!59230 (arr!28479 (Array (_ BitVec 32) (_ BitVec 64))) (size!28959 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59229)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(assert (=> b!963177 (= res!644729 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28959 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28959 _keys!1686))))))

(declare-fun b!963178 () Bool)

(declare-fun tp_is_empty!21575 () Bool)

(assert (=> b!963178 (= e!543133 tp_is_empty!21575)))

(declare-fun b!963179 () Bool)

(declare-fun e!543129 () Bool)

(declare-fun e!543131 () Bool)

(assert (=> b!963179 (= e!543129 (and e!543131 mapRes!34357))))

(declare-fun condMapEmpty!34357 () Bool)

(declare-fun mapDefault!34357 () ValueCell!10306)

