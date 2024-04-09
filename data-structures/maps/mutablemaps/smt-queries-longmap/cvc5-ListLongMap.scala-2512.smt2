; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38898 () Bool)

(assert start!38898)

(declare-fun b!406352 () Bool)

(declare-fun res!234814 () Bool)

(declare-fun e!244180 () Bool)

(assert (=> b!406352 (=> (not res!234814) (not e!244180))))

(declare-datatypes ((array!24475 0))(
  ( (array!24476 (arr!11684 (Array (_ BitVec 32) (_ BitVec 64))) (size!12036 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24475)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24475 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!406352 (= res!234814 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!406353 () Bool)

(declare-fun res!234818 () Bool)

(assert (=> b!406353 (=> (not res!234818) (not e!244180))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!406353 (= res!234818 (validKeyInArray!0 k!794))))

(declare-fun b!406354 () Bool)

(declare-fun res!234813 () Bool)

(assert (=> b!406354 (=> (not res!234813) (not e!244180))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!406354 (= res!234813 (or (= (select (arr!11684 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11684 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!406355 () Bool)

(declare-fun e!244178 () Bool)

(assert (=> b!406355 (= e!244178 false)))

(declare-fun lt!188469 () Bool)

(declare-fun lt!188468 () array!24475)

(declare-datatypes ((List!6762 0))(
  ( (Nil!6759) (Cons!6758 (h!7614 (_ BitVec 64)) (t!11944 List!6762)) )
))
(declare-fun arrayNoDuplicates!0 (array!24475 (_ BitVec 32) List!6762) Bool)

(assert (=> b!406355 (= lt!188469 (arrayNoDuplicates!0 lt!188468 #b00000000000000000000000000000000 Nil!6759))))

(declare-fun b!406356 () Bool)

(assert (=> b!406356 (= e!244180 e!244178)))

(declare-fun res!234819 () Bool)

(assert (=> b!406356 (=> (not res!234819) (not e!244178))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24475 (_ BitVec 32)) Bool)

(assert (=> b!406356 (= res!234819 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188468 mask!1025))))

(assert (=> b!406356 (= lt!188468 (array!24476 (store (arr!11684 _keys!709) i!563 k!794) (size!12036 _keys!709)))))

(declare-fun b!406357 () Bool)

(declare-fun res!234815 () Bool)

(assert (=> b!406357 (=> (not res!234815) (not e!244180))))

(assert (=> b!406357 (= res!234815 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!17085 () Bool)

(declare-fun mapRes!17085 () Bool)

(assert (=> mapIsEmpty!17085 mapRes!17085))

(declare-fun res!234817 () Bool)

(assert (=> start!38898 (=> (not res!234817) (not e!244180))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38898 (= res!234817 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12036 _keys!709))))))

(assert (=> start!38898 e!244180))

(assert (=> start!38898 true))

(declare-datatypes ((V!14851 0))(
  ( (V!14852 (val!5199 Int)) )
))
(declare-datatypes ((ValueCell!4811 0))(
  ( (ValueCellFull!4811 (v!7442 V!14851)) (EmptyCell!4811) )
))
(declare-datatypes ((array!24477 0))(
  ( (array!24478 (arr!11685 (Array (_ BitVec 32) ValueCell!4811)) (size!12037 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24477)

(declare-fun e!244182 () Bool)

(declare-fun array_inv!8534 (array!24477) Bool)

(assert (=> start!38898 (and (array_inv!8534 _values!549) e!244182)))

(declare-fun array_inv!8535 (array!24475) Bool)

(assert (=> start!38898 (array_inv!8535 _keys!709)))

(declare-fun b!406358 () Bool)

(declare-fun res!234820 () Bool)

(assert (=> b!406358 (=> (not res!234820) (not e!244180))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!406358 (= res!234820 (validMask!0 mask!1025))))

(declare-fun b!406359 () Bool)

(declare-fun res!234816 () Bool)

(assert (=> b!406359 (=> (not res!234816) (not e!244180))))

(assert (=> b!406359 (= res!234816 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6759))))

(declare-fun b!406360 () Bool)

(declare-fun e!244183 () Bool)

(declare-fun tp_is_empty!10309 () Bool)

(assert (=> b!406360 (= e!244183 tp_is_empty!10309)))

(declare-fun b!406361 () Bool)

(declare-fun res!234822 () Bool)

(assert (=> b!406361 (=> (not res!234822) (not e!244180))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!406361 (= res!234822 (and (= (size!12037 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12036 _keys!709) (size!12037 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!406362 () Bool)

(assert (=> b!406362 (= e!244182 (and e!244183 mapRes!17085))))

(declare-fun condMapEmpty!17085 () Bool)

(declare-fun mapDefault!17085 () ValueCell!4811)

