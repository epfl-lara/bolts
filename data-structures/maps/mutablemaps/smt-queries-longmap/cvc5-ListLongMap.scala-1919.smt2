; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34168 () Bool)

(assert start!34168)

(declare-fun b_free!7183 () Bool)

(declare-fun b_next!7183 () Bool)

(assert (=> start!34168 (= b_free!7183 (not b_next!7183))))

(declare-fun tp!25083 () Bool)

(declare-fun b_and!14401 () Bool)

(assert (=> start!34168 (= tp!25083 b_and!14401)))

(declare-fun b!340174 () Bool)

(declare-fun e!208707 () Bool)

(declare-fun tp_is_empty!7135 () Bool)

(assert (=> b!340174 (= e!208707 tp_is_empty!7135)))

(declare-fun b!340175 () Bool)

(declare-fun res!187943 () Bool)

(declare-fun e!208706 () Bool)

(assert (=> b!340175 (=> (not res!187943) (not e!208706))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10491 0))(
  ( (V!10492 (val!3612 Int)) )
))
(declare-datatypes ((ValueCell!3224 0))(
  ( (ValueCellFull!3224 (v!5780 V!10491)) (EmptyCell!3224) )
))
(declare-datatypes ((array!17841 0))(
  ( (array!17842 (arr!8438 (Array (_ BitVec 32) ValueCell!3224)) (size!8790 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17841)

(declare-datatypes ((array!17843 0))(
  ( (array!17844 (arr!8439 (Array (_ BitVec 32) (_ BitVec 64))) (size!8791 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17843)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!340175 (= res!187943 (and (= (size!8790 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8791 _keys!1895) (size!8790 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!340176 () Bool)

(assert (=> b!340176 (= e!208706 false)))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3262 0))(
  ( (MissingZero!3262 (index!15227 (_ BitVec 32))) (Found!3262 (index!15228 (_ BitVec 32))) (Intermediate!3262 (undefined!4074 Bool) (index!15229 (_ BitVec 32)) (x!33891 (_ BitVec 32))) (Undefined!3262) (MissingVacant!3262 (index!15230 (_ BitVec 32))) )
))
(declare-fun lt!161541 () SeekEntryResult!3262)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17843 (_ BitVec 32)) SeekEntryResult!3262)

(assert (=> b!340176 (= lt!161541 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun res!187938 () Bool)

(assert (=> start!34168 (=> (not res!187938) (not e!208706))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34168 (= res!187938 (validMask!0 mask!2385))))

(assert (=> start!34168 e!208706))

(assert (=> start!34168 true))

(assert (=> start!34168 tp_is_empty!7135))

(assert (=> start!34168 tp!25083))

(declare-fun e!208703 () Bool)

(declare-fun array_inv!6244 (array!17841) Bool)

(assert (=> start!34168 (and (array_inv!6244 _values!1525) e!208703)))

(declare-fun array_inv!6245 (array!17843) Bool)

(assert (=> start!34168 (array_inv!6245 _keys!1895)))

(declare-fun b!340177 () Bool)

(declare-fun res!187941 () Bool)

(assert (=> b!340177 (=> (not res!187941) (not e!208706))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!340177 (= res!187941 (validKeyInArray!0 k!1348))))

(declare-fun b!340178 () Bool)

(declare-fun res!187940 () Bool)

(assert (=> b!340178 (=> (not res!187940) (not e!208706))))

(declare-datatypes ((List!4874 0))(
  ( (Nil!4871) (Cons!4870 (h!5726 (_ BitVec 64)) (t!9990 List!4874)) )
))
(declare-fun arrayNoDuplicates!0 (array!17843 (_ BitVec 32) List!4874) Bool)

(assert (=> b!340178 (= res!187940 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4871))))

(declare-fun b!340179 () Bool)

(declare-fun res!187942 () Bool)

(assert (=> b!340179 (=> (not res!187942) (not e!208706))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17843 (_ BitVec 32)) Bool)

(assert (=> b!340179 (= res!187942 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12129 () Bool)

(declare-fun mapRes!12129 () Bool)

(assert (=> mapIsEmpty!12129 mapRes!12129))

(declare-fun b!340180 () Bool)

(declare-fun e!208705 () Bool)

(assert (=> b!340180 (= e!208703 (and e!208705 mapRes!12129))))

(declare-fun condMapEmpty!12129 () Bool)

(declare-fun mapDefault!12129 () ValueCell!3224)

