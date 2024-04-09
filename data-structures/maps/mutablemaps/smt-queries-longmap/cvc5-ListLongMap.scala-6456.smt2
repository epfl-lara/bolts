; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82604 () Bool)

(assert start!82604)

(declare-fun b_free!18709 () Bool)

(declare-fun b_next!18709 () Bool)

(assert (=> start!82604 (= b_free!18709 (not b_next!18709))))

(declare-fun tp!65248 () Bool)

(declare-fun b_and!30215 () Bool)

(assert (=> start!82604 (= tp!65248 b_and!30215)))

(declare-fun b!962207 () Bool)

(declare-fun res!644045 () Bool)

(declare-fun e!542651 () Bool)

(assert (=> b!962207 (=> (not res!644045) (not e!542651))))

(declare-datatypes ((array!59105 0))(
  ( (array!59106 (arr!28417 (Array (_ BitVec 32) (_ BitVec 64))) (size!28897 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59105)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!962207 (= res!644045 (validKeyInArray!0 (select (arr!28417 _keys!1686) i!803)))))

(declare-fun res!644043 () Bool)

(assert (=> start!82604 (=> (not res!644043) (not e!542651))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82604 (= res!644043 (validMask!0 mask!2110))))

(assert (=> start!82604 e!542651))

(assert (=> start!82604 true))

(declare-datatypes ((V!33665 0))(
  ( (V!33666 (val!10806 Int)) )
))
(declare-datatypes ((ValueCell!10274 0))(
  ( (ValueCellFull!10274 (v!13364 V!33665)) (EmptyCell!10274) )
))
(declare-datatypes ((array!59107 0))(
  ( (array!59108 (arr!28418 (Array (_ BitVec 32) ValueCell!10274)) (size!28898 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59107)

(declare-fun e!542650 () Bool)

(declare-fun array_inv!21943 (array!59107) Bool)

(assert (=> start!82604 (and (array_inv!21943 _values!1400) e!542650)))

(declare-fun array_inv!21944 (array!59105) Bool)

(assert (=> start!82604 (array_inv!21944 _keys!1686)))

(assert (=> start!82604 tp!65248))

(declare-fun tp_is_empty!21511 () Bool)

(assert (=> start!82604 tp_is_empty!21511))

(declare-fun b!962208 () Bool)

(declare-fun e!542653 () Bool)

(declare-fun mapRes!34261 () Bool)

(assert (=> b!962208 (= e!542650 (and e!542653 mapRes!34261))))

(declare-fun condMapEmpty!34261 () Bool)

(declare-fun mapDefault!34261 () ValueCell!10274)

